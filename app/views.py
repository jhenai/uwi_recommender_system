from __future__ import division
import os, time
import MySQLdb
import mysql.connector
import smtplib

from flask import render_template, request, redirect, url_for, flash, session, Flask,abort
app = Flask(__name__)
app.config['SECRET_KEY'] = 'jw secret key'

from functools import wraps
#from views import user
#import user

    
#to send an email from contact form on home page 
message= """From: {} <{}>
To: {} <{}> 
Subject: {}
{}  """

db = MySQLdb.connect("localhost", "root", "", "records" )
cursor = db.cursor()

idnum,fname, lname, faculty, major, minor = '','','','','', ''
courses_completed=[] #courses the student completed
minor_courses=[] #courses of chosen major
major_courses=[] #courses of chosen minor
foundation_courses=[] #courses of chosen foundation
recommended_courses= []

def login_required(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if "logged_in" in session:
            return f(*args,**kwargs)
        else:
            flash ("Log in first")
            return redirect(url_for("login"))
    return wrap
    

    
@app.route('/')
@app.route('/login', methods= ['GET','POST'])
def login():
    error=""

    if request.method == 'POST':
        idnumber = request.form['username']
        password = request.form['password']
        if getUserInfo(idnumber,password):
        
         
             session['logged_in'] = True
             session['id']= idnum
           
             flash('You are logged in')
             return redirect(url_for('index'))
        else:
            flash('Incorrect password')
    return render_template('login.html',error=error)    



@app.route('/home/',methods=["GET","POST"])
def index():
    global fname,lame
    checkLogin() 
    if request.method=='POST':
        from_email = request.form['email']
        from_name=request.form['full_name']
        msg =request.form['message']
        subject='Recommender System'
        send_mail(from_name,from_email, subject, msg)
        flash("E-Mail has been sent successfully")
        return redirect(url_for('index'))
    elif request.method=='GET':
        print 'name is' 
        return render_template("home.html",fname=fname,lname= lname)
        
def send_mail(from_name, from_email, subject, msg):
    from_addr = request.form['email']
    to_addr = 'keeziallen@gmail.com'
    to_name='Administrator'
    subject='Recommender System'
    message_to_send = message.format(from_name, from_addr, to_name,to_addr,subject, msg)
    # Credentials (if needed)
    username = 'recommendersystem01@gmail.com'
    password = 'recommendersystem2017'
    # The actual mail send
    server = smtplib.SMTP('smtp.gmail.com:587')
    server.starttls()
    server.login(username, password)
    server.sendmail(from_addr, to_addr, message_to_send)
    server.quit() 
    
@app.route('/profile/',methods=["GET","POST"])
def profile():
    checkLogin()
    global fname,lame,faculty,major, minor
    allinterests=interests()
    return render_template("profile.html", fname=fname,lname = lname,faculty=faculty, major=major, minor=minor,interests=allinterests )

@app.route('/recommendations/')
def recommendations():
    checkLogin()
    return render_template("recommendations.html")

@app.route('/progress/')
def progress():
    
    global major_courses,minor_courses,foundation_courses, courses_completed, idnum, faculty, minor

    if not session.get('logged_in'):
        return redirect (url_for('login'))
        
    # courses= {}
    getCompletedCourses()
   
   
    major=[]
    getMajorcourses()
    major_credits= majorCredits()
    for course in courses_completed:
        if course in major_courses:
            ##print 'course is', course
            major.append(course)
            
    if minor != '':
        #print 'minor is', minor
        minorcourses = getMinorcorses()
        minor_credits= minorCredits()
        for course in courses_completed:
            if course in minorcourses:
                minor_courses.append(course)
                
    # sql= "select courseID from course_foundation where faculty = '%s' " % faculty
    # cursor.execute(sql)
    # results = cursor.fetchall()
    # foundation=[]
    foundation_credits=9
    # for row in results:
    #     foundation.append(row[0])
    # # session['student_foundation']= foundation
    foundation= getFoundationcorses()
    for course in courses_completed:
        if course in foundation:
            foundation_courses.append(course)
   
    major_credits_completed =totalCreditsCompleted('major')
    minor_credits_completed =totalCreditsCompleted('minor')
    foundation_credits_completed =totalCreditsCompleted('foundation')

    #print "percentage check: ", percentageCalculation()
    
    return render_template("progress.html",courses=courses_completed, major_courses_completed=major, minor_courses_completed=minor_courses, foundation_courses_completed=foundation_courses, major_credits= major_credits, minor_credits= minor_credits,foundation_credits=foundation_credits, major_credits_completed = major_credits_completed, minor_credits_completed=minor_credits_completed, foundation_credits_completed=foundation_credits_completed)
   

@app.route('/logout/')
@login_required
def logout():
    session.pop('logged_in', None)
    flash('You were logged out')
    return redirect (url_for('login'))
     
@app.route('/major/')
def studentmajor():
    courses= recommend('major')
 
    return render_template("major.html", major_recommend = courses)

@app.route('/minor/')
def studentminor():
    courses= recommend('minor')
    return render_template("minor.html",minor_recommend = courses)
     
@app.route('/interest/')
def interest():
    interest_recommend=recommend_interests()
    return render_template("interest.html",interest_recommend=interest_recommend)
     
@app.route('/foundation/')
def foundation():
     courses= recommendFoundation()
     return render_template("foundation.html",foundation_recommend=courses)
     
     
@app.errorhandler (404)
def page_not_found(e):
     return (str(e))  
     
     
# this is where the shit goes that does the recommending

def checkLogin():
    if not session.get('logged_in'):
        return redirect (url_for('login')) 

def getUserInfo(idnumber,password):
    sql= "select Password,studentID,FirstName,LastName,Faculty,Major,Minor from Studentrecords where studentID = %s " % idnumber
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
            global idnum, fname, lname,faculty,major,minor
            pwd= row[0]
            idnum=row[1]
            fname = row[2]
            lname= row[3]
            faculty= row[4]
            major= row[5]
            minor= row[6]
    
    if idnumber == str(idnum) and password == pwd:
        return True

def getCompletedCourses():
    global courses_completed,levelone_course
    courses= {}
    sql= "select courseID, grades from studentcourses where studentID = %s " % session['id']
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        for row in results:
            if row[1] != 'F':
                courses[row[0]] = row[1]
        courses_completed= courses
    return courses_completed    
   
def getMajorcourses():
    global major, major_courses
    del major_courses[:]
    sql= "select courseID from course_major where Major = '%s' " % major
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        major_courses.append(row[0])
    
    return major_courses
    
def getMinorcorses():
    global minor, minor_courses
    del minor_courses[:]
    sql= "select courseID from course_minor where Minor = '%s' " % minor
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        minor_courses.append(row[0])
    return minor_courses
    
def getFoundationcorses():
    sql= "select courseID from course_foundation where faculty = '%s' " % faculty
    cursor.execute(sql)
    results = cursor.fetchall()
    foundation=[]
    foundation_credits=9
    for row in results:
        foundation.append(row[0])
    return foundation
    # session['student_foundation']= foundation
      


def getUncompletedcourses(minmaj):
    getCompletedCourses()
    getMajorcourses()
    getMinorcorses()
    global courses_completed, major_courses, minor_courses
    uncompleted_courses=[]
    del uncompleted_courses[:]
    ##print "uncompleted_courses", uncompleted_courses
    if minmaj == "major":
        for course in major_courses:
            if course not in courses_completed:
                uncompleted_courses.append(course)
    elif minmaj== "minor":
        for course in minor_courses:
            if course not in courses_completed:
                uncompleted_courses.append(course)
    ##print "more uncompleted_courses", uncompleted_courses
    return uncompleted_courses

def getPrerequisite(course):
    sql= 'select prerequisiteID from prerequisites where courseID = "%s"' %course
    cursor.execute(sql)
    results = cursor.fetchall()
    prerequisites=[]
    for row in results:
        prerequisites.append(row[0])
    return prerequisites
    
def prerequisitesCheck(course):
    global courses_completed
    if course in courses_completed:
        return True
        
def semesterCheck():
    if int(time.strftime("%m")) in range(5):
        print "we are in semester 2"
        return 2
    else:
        print "we are in semester 1"
        return 1
        
def semesterValidaton(course):
    sql= 'select semester from courses where courseID = "%s"' %course
    cursor.execute(sql)
    row = cursor.fetchone()
    print 'row in semesterValidaton:', row
    while row is not None:
        
            if row[0] == "both" : 
                return course
            elif int(row[0]) ==  semesterCheck():
                return True
            else:
                return False
    
def recommend(minmaj):
    global recommended_courses
    global courses_completed
    getCompletedCourses()
    uncompleted_courses =[]
    del recommended_courses[:]
   
    uncompleted_courses= getUncompletedcourses(minmaj)
   
    courses=[]
    
    for course in uncompleted_courses:
        
        if semesterValidaton(course) == True and antirequisitesCheck(course)== True: 
            courses.append(course)
            print 'courses:', courses
    for x in courses:
        prerequisites = getPrerequisite(x)
        print "prerequisites: ", prerequisites
        check= 0
        print uncompleted_courses
        for prereq in prerequisites:
                if prerequisitesCheck(prereq):
                    print check
                else:
                    check += 1
                #print check
        if check == 0:
                recommended_courses.append(course)
    return recommended_courses
    
    
def recommendFoundation():
    global courses_completed, faculty
    getCompletedCourses()
    courses=[]
    foundation=[]
    sql= 'select courseID from course_foundation where faculty = "%s"' % faculty
    cursor.execute(sql)
    results = cursor.fetchall()
    ##print faculty
    for row in results:
        courses.append(row[0])
    for course in courses:
        if course not in courses_completed:
            foundation.append(course)
    return foundation

def interests():
    interest=[]
    sql= 'select interestName from interests'
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        interest.append(row)
    return interest


def recommend_interests():
    global courses_completed
    getCompletedCourses()
    rec_interest=[]
    sql= 'select courseID from courseinterest'
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        if row not in courses_completed:
            rec_interest.append(row)
    return rec_interest

def majorCredits():
    global major
    sql= 'select Credits_Needed from Major where Major = "%s"' % major
    #print 'in func major:', major
    cursor.execute(sql)
    results = cursor.fetchone()
    return results[0]
    
    
def minorCredits():
    global minor
    sql= 'select Credits_Needed from Minor where Minor = "%s"' % minor
    cursor.execute(sql)
    results = cursor.fetchone()
    #print 'in func minor:', minor
    #print 'results:', results
    return results[0]
        
        
def totalCreditsCompleted(minmaj):
    completed = getCompletedCourses()
    if minmaj == "major":
        courses= getMajorcourses()
    elif minmaj == "minor":
        courses= getMinorcorses()
    elif  minmaj == "foundation":
        courses = getFoundationcorses()
    sumCredits =0
    print "courses:", courses
    print "courses completed: ", completed
    
    for course in courses:
        if course in completed:
            if firstYearCheck(course) == False or course[:4] == "FOUN":
                sql= 'select credits from courses where courseID = "%s"' % course
                cursor.execute(sql)
                results = cursor.fetchall()
                sumCredits+= results[0][0]
                print "credits so far:", sumCredits
    print "Total credits:", sumCredits
    # if minmaj == "major":
    #     return percentageCalculation(sumCredits, majorCredits())
    # elif minmaj == "minor":
    #      return percentageCalculation(sumCredits, minorCredits())
    return sumCredits
    
def percentageCalculation(f, g):
    return format(f/g, '.2f')
    
def firstYearCheck(course):
#this is not the optimal way and needs to eventually be changed
    return int(course[4:]) < 2000
    
def antirequisitesCheck(course):
    global courses_completed
    print "global courses_completed:", courses_completed
    sql= 'select courseID from antirequisites where antirequisiteID = "%s"' % course
    cursor.execute(sql)
    results = cursor.fetchall()
    print "antirequisitesCheck results:", results
    if results != None :
        return True
    for row in results:
        if row not in courses_completed:
            return True
        
    
    

    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

if __name__ == "__main__":
    app.run(debug=True,host="0.0.0.0",port=8080) 
    