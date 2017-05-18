from __future__ import division
import os, time
import MySQLdb
import mysql.connector
import smtplib
import pandas as pd
import numpy as np
from werkzeug.utils import secure_filename
from flask import render_template, request, redirect, url_for, flash, session, Flask,abort, jsonify
app = Flask(__name__)
app.config['SECRET_KEY'] = 'jw secret key'

from functools import wraps
#from views import user
#import user

UPLOAD_FOLDER = './app/static/images'
app.config['UPLOAD_FOLDER']=UPLOAD_FOLDER


    
#to send an email from contact form on home page 
message= """From: {} <{}>
To: {} <{}> 
Subject: {}
{}  """

db = MySQLdb.connect("localhost", "root", "", "records",charset='utf8' )
cursor = db.cursor()

idnum,fname, lname, faculty, major, minor, grade_option, grade_choice = '','','','','', '','Yes','C'
courses_completed=[] #courses the student completed
minor_courses=[] #courses of chosen major
major_courses=[] #courses of chosen minor
foundation_courses=[] #courses of chosen foundation
recommended_courses= []
selected_courses=[]
creditsfordegree=0

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
             global courses_completed
             courses_completed= getCompletedCourses()
             return redirect(url_for('index'))
        else:
            flash('Incorrect password or ID Number')
    return render_template('login.html',error=error)    



@app.route('/home/',methods=["GET","POST"])
def index():
    global fname,lame
    checkLogin() 
    if not session.get('logged_in'):
        return redirect (url_for('login'))
    if request.method=='POST':
        from_email = request.form['email']
        from_name= fname 
        msg =request.form['message']
        subject='Recommender System'
        send_mail(from_name,from_email, subject, msg)
        flash("E-Mail has been sent successfully")
        return redirect(url_for('index'))
    elif request.method=='GET':
        ##print 'name is' 
        return render_template("home.html",fname=fname,lname= lname)
        
def send_mail(from_name, from_email, subject, msg):
    #error not collecting senders email
    from_addr = from_email
    to_addr = 'recommendersystem01@gmail.com'
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
    server.sendmail(from_email, to_addr, message_to_send)
    server.quit() 
    
@app.route('/profile/',methods=["GET","POST"])
def profile():
    checkLogin()
    global fname,lame,faculty,major, minor,idnum
    if not session.get('logged_in'):
        return redirect (url_for('login'))
        
  
           
    allinterests=interests()
    file_folder = app.config['UPLOAD_FOLDER']
    
    if request.method == 'POST':
        
        if 'submitselected' in request.form:
            print "sumbitselected select"
            selectcourses = request.form['courses_array']
            selectcourses = selectcourses.split(',')
            if '' in selectcourses:
                selectcourses.remove('')
            print "selectcourses profile: ", selectcourses 
            sql="DELETE FROM  chosen_courses where studentID= '{}'".format(session['id'])
            cursor.execute(sql)
            db.commit()
            
            for course in selectcourses:
                sql= """INSERT INTO chosen_courses VALUES ('{}','{}')""".format(session['id'], course)
                print sql  
                cursor.execute(sql)
                db.commit()
            print 'courses_array: ', selectcourses
        
        
    
            print "sumbit selected"
        
        interestslst = request.form.getlist('interest')
        for interest in interestslst:
            print interest  + ':' + request.form.get(interest + 'range')
            interestrange=(request.form.get(interest + 'range'))
            try:
                cursor.execute("""INSERT INTO studentsinterests VALUES (%s,%s,%s)""",(session['id'],interest, interestrange))
                db.commit()
            except:
               db.rollback()
        
        imageinterest = request.form.getlist('imageinterest')
        for i in imageinterest:
            try:
                sql="DELETE FROM  studentsinterests where interest = '{}' and studentID= '{}'".format(i, session['id'])
                cursor.execute(sql)
                db.commit()
            except:
               db.rollback()
               
        return redirect(url_for("profile"))
        
        
        
        
        
        
       
    sql= "select courseID from chosen_courses where studentID = '{}'".format(session['id'])
    cursor.execute(sql)
    chosen_courses = cursor.fetchall()
    g=[]
    for course in chosen_courses:
        g.append(course[0])    
       
    # print "chosen_courses ", g
   
    
    choseninterest = showInterest()
    creditscompleted= totalcreditscompleted()
    creditsfordegree = totalcreditsfordegree(faculty)
    a=0
    a=creditscompleted/creditsfordegree
    a=a*100
    a=format(a,'.2f')
    
    infolvlone=levelOneCheck()
    infolvltwothree = leveltwothree()
    facultyimg=facimg()
    majorimg=majimg()
    minorimg=minimg()
    computingleveloneCoursesCheck_faculty()
    return render_template("profile.html", chosen_courses=g, fname=fname,lname = lname,idnum=idnum,a=a, info=infolvlone, lvlcomp= infolvltwothree, creditsfordegree= creditsfordegree, creditscompleted=creditscompleted,faculty= facultyimg, major=majorimg, minor=minorimg,interests=allinterests, choseninterest=choseninterest)

@app.route('/recommendations/',methods=["GET","POST"])
def recommendations():
    checkLogin()
    # global selected_courses
    # print "rec_maj: ", recommend('major')
    # ek= recommend(recommend(getMajorcourses()))
    selectedcred= ''
    
    if request.method == 'POST':
        if 'settings' in request.form:
            print "settings"
            global grade_choice, grade_option
            grade_choice = request.form['f-option']
            grade_option = request.form['gradeon']
            
            
            print "grade_choice: ", grade_choice
            print "grade_option: ", grade_option
            
        if 'choosen_courses' in request.form:
            # print "selectedcourse"
            courses = (request.form['course']).split(',')
            
            selectedcred=selectedcreditcheck(courses)
            if selectedcred == True:
                sql= "select studentID from chosen_courses where studentID = '{}'".format(session['id'])
                cursor.execute(sql)
                results = cursor.fetchall()
                print results
                if results != "()":
                    sql= "delete from chosen_courses where studentID = '{}'".format(session['id'])
                    cursor.execute(sql)
                    db.commit()
                for course in courses:
                        cursor.execute("""INSERT INTO chosen_courses VALUES (%s,%s)""",(session['id'],course))
                        # cursor.execute(sql)
                        db.commit()
                        # print 'worked'
            # print "selectedcourses: ", courses
            # print 'selectedcred: ', selectedcred
            return render_template("recommendations.html",selectedcred=selectedcred)
    # print "recom"
    return render_template("recommendations.html",selectedcred=selectedcred)
   
@app.route('/ratings/',methods=["GET","POST"])
def ratings():
    ratings= pd.read_csv("ratings_courses.csv")
    M = ratings.pivot_table(index=['student'], columns=['coursecode'],values='ratings')
    
    recommendations, stage1,recs_courses =[], dict(), []
    completed_courses= getCompletedCourses()
    major_courses= recommend(getMajorcourses())
    minor_courses= recommend(getMinorcourses())
    for course in completed_courses:
        recs = get_recs(course, M)
        recs = dict(recs)
        # print recs
        
        for r in recs:
            if r in stage1:
                stage1[r]= stage1.get(r) + 1
            else:
                stage1[r]= 1
                
    # print "stage1 ", stage1
    stage2= recommend(stage1)
    # print "stage2", stage2
    stage3= dict()
    for s in stage2:
        stage3[s]= stage1.get(s)
    # print stage3
   
    stage3=[(k,v) for k, v in stage3.iteritems()]
    stage3.sort(key=lambda tup: tup[1], reverse=True)
    # print "final ", stage3
    
    courses= dict(stage3).keys()
    ratings= dict(stage3).values()
    title = coursenames(courses)
    # print desc
    desc= description(courses)
    # print desc
    grades= grades_get(stage3)
    
    return render_template("ratings.html", recommend= zip(courses,ratings, desc,grades,title))
   


@app.route('/search/',methods=["GET","POST"])
def search():
    checkLogin()
    if request.method == 'POST':
        course=request.form['course']
        searched=[]
        sql= "select courseID from courses where courseID like '{}'".format(course)
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            if semesterValidaton(row)==True:
                searched.append(row[0])
        desc= description(searched)
        title=coursenames(searched)
        return  render_template("search.html", search=zip(searched,desc,title))
    # trial()
    return render_template("search.html")
        
@app.route('/progress/')
def progress():
    
    global major_courses,minor_courses,foundation_courses, courses_completed, idnum, faculty, minor

    if not session.get('logged_in'):
        return redirect (url_for('login'))
        
    # courses= {}
    getCompletedCourses()
    # computingRequirementsCheck()
   
    major=[]
    getMajorcourses()
    major_credits= majorCredits()
    for course in courses_completed:
        if course in major_courses:
            major.append(course) 
    sql= "select Major from Studentrecords where studentID = %s " % session['id']
    cursor.execute(sql)
    maj = cursor.fetchone()            
    if maj[0] == "Computer Science" or maj == "Software Engineering":
        for course in courses_completed:
            for string in ['COMP','SWEN','INFO']:
                if string in course:
                    if firstYearCheck(course) == False:
                        if course not in major:
                            major.append(course)
            
    if minor == '':
        minor_credits=0
    else:    
        ##print 'minor is', minor
        
        minor_credits= minorCredits()
        minorcour=compminor()

   
    foundation_credits=9
   
    
    foundation_courses=compfound()
   
    major_credits_completed =totalCreditsCompleted('major')
    minor_credits_completed =totalCreditsCompleted('minor')
    foundation_credits_completed =totalCreditsCompleted('foundation')
    x=0
    x=major_credits_completed/major_credits
    x=x*100
    x=format(x,'.2f')
    if minor_credits != 0:
        y=0
        y=minor_credits_completed/minor_credits
        y=y*100
        y=format(y,'.2f')
    else:
        y=0.00
    
    z=0
    z=foundation_credits_completed/foundation_credits
    z=z*100
    z=format(z,'.2f')
    #print "z: ",z
    # if z < 1:
        # result = computingRequirementsCheck()
    
    creditscompleted= totalcreditscompleted()
    creditsfordegree = totalcreditsfordegree(faculty)
    
    a=0
    a=creditscompleted/creditsfordegree
    a=a*100
    a=format(a,'.2f')
    ##print "percentage check: ", percentageCalculation()
   
    
    return render_template("progress.html",courses=courses_completed,  a=a, x=x, y=y, z=z, creditsfordegree= creditsfordegree, creditscompleted=creditscompleted, major_courses_completed=major, minor_courses_completed=minorcour, foundation_courses_completed=foundation_courses, major_credits= major_credits, minor_credits= minor_credits,foundation_credits=foundation_credits, major_credits_completed = major_credits_completed, minor_credits_completed=minor_credits_completed, foundation_credits_completed=foundation_credits_completed)
   

@app.route('/logout/')
@login_required
def logout():
    session.pop('logged_in', None)
    session.clear()
    
    flash('You were logged out')
    return redirect (url_for('login'))
     
@app.route('/major/',methods=["GET","POST"])
def studentmajor():
    selectedcred ='jj'
    courses= recommend(getMajorcourses())
    grades= grades_get(courses)
    # print 'majorgrades: ', grades
    desc= description(courses)
    title=coursenames(courses)
    compcredit = compcredits()
    
    
    if request.method == 'POST':
    
        courses=request.form['selectedCourses']
        selectedcred=selectedcreditcheck(courses)
        #print "selectedcorses: ", courses
        #print 'selectedcred: ', selectedcred
    # if grades == None:
        
    return render_template("major.html",major_recommend = zip(courses,desc,grades,title), compcredit= compcredit)
    


@app.route('/minor/', methods=['GET', 'POST'])
def studentminor():
    global minor, courses_completed
    # print "minor: ", minor
    if minor == '' or minor == None:
        return render_template("minor.html", minor= None)
    
    minor_choosecourse =[]
    if minor == "Information Technology":
         minor_choosecourse= ['INFO2110', 'COMP2190', 'INFO2100', 'INFO2180', 'INFO3105', 'INFO3155', 'INFO3170', 'INFO3180','INFO3435']
    elif minor == "Software Engineering":
        minor_choosecourse=  ['COMP2201','SWEN3130','SWEN3145','SWEN3165','SWEN3185']
    elif minor == "Computer Science":
        minor_choosecourse=  ['COMP2010','COMP2120','COMP2130','COMP2140','COMP2170','COMP2190','COMP2211','COMP3101','COMP3911','COMP3220', 'COMP3652', 'COMP3702', 'COMP3801']
    
    courses= recommend(getMinorcourses()) 
    mincred=minor_credits()
    choose_courses= []
    completed_choosecourse=[]
    for course in minor_choosecourse:
            if course in courses:
                courses.remove(course)
                choose_courses.append(course)
            if course in courses_completed:
                completed_choosecourse.append(course)
    desc= description(courses)
    desc2= description(choose_courses)
    desc3= description(completed_choosecourse)
    
    selectedcred =''
    maincourses= minormainselection()
    
    maincourse=minormainselectioncourses()
    maincoursegrade= grades_get(maincourse)
    print "maincoursegrade: ", maincoursegrade
    print "maincoursegradezip", zip(maincourse,maincoursegrade)
    desc1=description(maincourse)
    title1= coursenames(maincourse)
    
    othercourses=minorotherselection()
    othercourse=minorotherselectioncourses()
    desc2=description(othercourse)
    othercoursegrade= grades_get(othercourse)
    title2 = coursenames(othercourse)
    
    if request.method == 'POST':
    
        courses=request.form['selectedCourses']
        selectedcred=selectedcreditcheck(courses)
        #print "selectedcorses: ", courses
    return render_template("minor.html",minor= minor, minor_recommend = zip(courses,desc),mincred=mincred, othercourse=zip(desc1,othercourse,othercoursegrade,title1),othercourses=othercourses,maincourse=zip(desc2,maincourse,maincoursegrade,title2),maincourses=maincourses,completed_choosecourse=completed_choosecourse, choose_courses=zip(choose_courses,desc2), minor_choosecourse=zip(minor_choosecourse,desc3))
     
@app.route('/interest/', methods=['GET', 'POST'])
def interest():
    dividers=recommend_interestsTemp()
    courses=recommend_interests()
    # print "hey"
    # print "interest courses:", courses
    desc= description(courses)
    selectedcred =''
    grades= grades_get(courses)
    title = coursenames(courses)
    # selectedcred=''
    
    if request.method == 'POST':
    
        courses=request.form['selectedCourses']
        selectedcred=selectedcreditcheck(courses)
        #print "selectedcorses: ", courses
    return render_template("interest.html",interest_recommend=zip(courses,desc,grades,title),division=dividers)
     
@app.route('/foundation/', methods=['GET', 'POST'])
def foundation():
     courses= recommendFoundation()
     grades= grades_get(courses)
     title= coursenames(courses)
     # print 'majorgrades: ', grades
     desc= description(courses)
     info=computingRequirementsCheck_Foundation()
     selectedcred =''
     if request.method == 'POST':
    
        courses=request.form['selectedCourses']
        selectedcred=selectedcreditcheck(courses)
        #print "selectedcorses: ", courses
     return render_template("foundation.html",foundation_recommend=zip(courses,desc,grades,title), info=info)
     
     
@app.errorhandler (404)
def page_not_found(e):
     return (str(e))  
     
# this is where the shit goes that does the recommending

def description(lst):
    desc=[]
    # print " list: ", lst
    for item in lst:
        sql= "select description from courses where courseID = '%s'" % item
        cursor.execute(sql)
        row = cursor.fetchone()
        if row is not None:
            desc.append(row[0])
        else:
            desc.append('No description')
    # print desc
    return desc

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
    sql= "select courseID, grade from studentcourses where studentID = %s " % session['id']
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

    #print "major_courses: ", major_courses
    return major_courses
    
def getMinorcourses():
    global minor, minor_courses
    if minor != None:
        sql= 'select courseID from course_minor where Minor = "%s" ' % minor
        cursor.execute(sql)
        results = cursor.fetchall()
        for row in results:
            minor_courses.append(row[0])
        return minor_courses
    else:
        return minor_courses
    
def getFoundationcorses():
    global faculty
    sql= "select courseID from course_foundation where faculty = '%s' " % faculty
    cursor.execute(sql)
    results = cursor.fetchall()
    foundation=[]
    foundation_credits=9
    for row in results:
        foundation.append(row[0])
    return foundation
    # session['student_foundation']= foundation
      


def getUncompletedcourses(lst):
    getCompletedCourses()
    
    global courses_completed, major_courses, minor_courses
    uncompleted_courses=[]
    del uncompleted_courses[:]
    ###print "uncompleted_courses", uncompleted_courses
    # if minmaj == "major":
    #     getMajorcourses()
    for course in lst:
            if course not in courses_completed:
                uncompleted_courses.append(course)
    # elif minmaj== "minor":
        
    #     getMinorcourses()
    #     for course in minor_courses:
    #         if course not in courses_completed:
    #             uncompleted_courses.append(course)
    # print "uncompleted_courses", uncompleted_courses
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
    else:
        return False
        
def semesterCheck():
    if int(time.strftime("%m")) in range(6):
        ##print "we are in semester 2"
        return 2
    else:
        ##print "we are in semester 1"
        return 1
        
def semesterValidaton(course):
    sql= 'select semester from courses where courseID = "%s"' %course
    cursor.execute(sql)
    row = cursor.fetchone()
    
    while row is not None:
        
            if row[0] == 'both': 
                return True
            elif row[0] =='YL':
                return True
            elif int(row[0]) ==  semesterCheck():
                return True
            else:
                return False
    
def recommend(lst):
    global recommended_courses
    global courses_completed
    getCompletedCourses()
    uncompleted_courses =[]
    del recommended_courses[:]
    uncompleted_courses= getUncompletedcourses(lst)
   
    courses=[]
    
    for course in uncompleted_courses:
        
        if semesterValidaton(course) == True and antirequisitesCheck(course)== True: 
            courses.append(course)
        # print 'sem courses:', courses
    for x in courses:
        prerequisites = getPrerequisite(x)
        
        # print x, " prerequisites is: ", prerequisites
        check= 0
        ##print uncompleted_courses
        for prereq in prerequisites:
                if prerequisitesCheck(prereq):
                    pass
                else:
                    check += 1
        ##print check
        if check == 0:
                recommended_courses.append(x)
    return recommended_courses
    
    
def recommendFoundation():
    global courses_completed, faculty
    getCompletedCourses()
    courses=[]
    foundation=[]
    sql= 'select courseID from course_foundation where faculty = "%s"' % faculty
    cursor.execute(sql)
    results = cursor.fetchall()
    ###print faculty
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
    
def showInterest():
    interest=[]
    sql= "select interest from studentsinterests where studentID = '%s'" % session['id']
    cursor.execute(sql)
    results = cursor.fetchall()
    for row in results:
        interest.append(row[0])
    return interest


def recommend_interests():
    global courses_completed
    getCompletedCourses()
    rec_interest=[]
    courses=[]
    sql= 'select courseID from courseinterest where interestID in (select interestID from interests where interestName in (select interest from studentsinterests where studentID = "%s"  and rating between 4 and 5))' % session['id']
    cursor.execute(sql)
    results = cursor.fetchall()
    # print "results of recommend_interests: ", results
    for item in results:
        courses.append(item[0])
    # for row in results:
       
    #     if row[0] not in courses_completed:
    #         if semesterValidaton(row[0]) == True and antirequisitesCheck(row[0])== True: 
    #             courses.append(row[0])
    #         #print 'courses:', courses
    # for course in courses:
    #     prerequisites = getPrerequisite(course)
    #     check= 0
    #     for prereq in prerequisites:
    #             if prerequisitesCheck(prereq)== True:
    #                 pass
    #             else:
    #                 check += 1
    #     #print "prereqchec:",  check
    #     if check == 0:
    #       rec_interest.append(course)
          
    return recommend(courses)
    

def recommend_interestsTemp():
    global courses_completed
    getCompletedCourses()
    rec_interest,intcourses,results1=[],[],[]
    courses=[]
    # print "hey"
    sql= 'select interest from studentsinterests where studentID = "%s"' % session['id']
    cursor.execute(sql)
    k = cursor.fetchall()
    for d in k:
            results1.append(d[0])
    for interest in results1:
        sql= 'select courseID from courseinterest where interestID = (select interestID from interests where interestName = "%s")' % interest
        cursor.execute(sql)
        results = cursor.fetchall()
        intcourses=[]
        for d in results:
            intcourses.append(d[0])
        rec_interest.append((interest,intcourses))
    return rec_interest


def majorCredits():
    global major
    sql= 'select Credits_Needed from Major where Major = "%s"' % major
    ##print 'in func major:', major
    cursor.execute(sql)
    results = cursor.fetchone()
    return results[0]
    
    
def minorCredits():
    global minor
    if minor == None:
        results=[]
        results.append(0)
    else:
        sql= 'select Credits_Needed from Minor where Minor = "%s"' % minor
        cursor.execute(sql)
        results = cursor.fetchone()
    return results[0]
        
        
def totalCreditsCompleted(minmaj):
    completed = getCompletedCourses()
    a =[]
    if minmaj == "major":
        courses= getMajorcourses()
        sql= "select Major from Studentrecords where studentID = %s " % session['id']
        cursor.execute(sql)
        maj = cursor.fetchone()
        if maj[0] == "Computer Science" or maj == "Software Engineering":
            for course in completed:
                for string in ['COMP','SWEN','INFO']:
                    if string in course:
                        if firstYearCheck(course) == False:
                            if course not in courses:
                                a.append(course)
                            else:
                                a.append(course)
        else:
            for course in completed:
                if course in courses:
                    if firstYearCheck(course) == False:
                        a.append(course)
        
    elif minmaj == "minor":
        courses = compminor()
        for x in courses:
            if firstYearCheck(x) == False:
                a.append(x)
                

            
    elif  minmaj == "foundation":
        courses = getFoundationcorses()
    
    # print "courses:", courses
    # print "courses completed: ", completed
        for course in courses:
            if course in completed:
                    a.append(course)
    
   
                # print "le corses are:", courses
                # sql= 'select credits from courses where courseID = "%s"' % course
                # cursor.execute(sql)
                # results = cursor.fetchall()
                # sumCredits+= results[0][0]
                #print "credits so far:", sumCredits
    #print "Total credits:", sumCredits
    # if minmaj == "major":
    #     return percentageCalculation(sumCredits, majorCredits())
    # elif minmaj == "minor":
    #      return percentageCalculation(sumCredits, minorCredits())
    return creditCount(a)
    
def percentageCalculation(f, g):
    return format(f/g, '.2f')
    
def firstYearCheck(course):
#this is not the optimal way and needs to eventually be changed
    return int(course[4:]) < 2000
    
def firstYearCreditCheck():
    # calculates total amount of credits of level one courses
    global courses_completed
    fy_courses=[]
    for course in courses_completed:
        if firstYearCheck(course) == True:
            fy_courses.append(course)
    return fy_courses
    
def antirequisitesCheck(course):
    global courses_completed
    ##print "global courses_completed:", courses_completed
    sql= 'select courseID from antirequisites where antirequisiteID = "%s"' % course
    cursor.execute(sql)
    results = cursor.fetchall()
    ##print "antirequisitesCheck results:", results
    if results != None :
        return True
    for row in results:
        if row not in courses_completed:
            return True

def totalcreditscompleted(): 
    completed = getCompletedCourses()
    # com=[]
    # credits=0
    # i=0
    # for course in completed:
    #     sql= 'select credits from courses where courseID = "%s"' % course
    #     cursor.execute(sql)
    #     results = cursor.fetchall()
    #     for row in results:
    #         com.append(row[0])
    #         credits+=com[i]
    #         i+=1
    # return credits
    return creditCount(completed)
    
def creditCount(course_list):
    sumCredits=0
    # print "courses : ", course_list
    for course in course_list:
        sql= 'select credits from courses where courseID = "%s"' % course
        cursor.execute(sql)
        results = cursor.fetchall()
        # print "results: ", results
        sumCredits+= results[0][0]
    return sumCredits
    
 
 #  Departmental Rules here
    
    
    
def totalcreditsfordegree(faculty):
    if faculty=='Social Sciences':
        degreecredits=90
    else:
        degreecredits=93
    return degreecredits

    
def maximumsemestercredits():
    semester=semesterCheck()
    maxcredits=0
    global faculty
    results=faculty
    if semester == 1:
        if results == 'Science and Technology':
            maxcredits=18
        else:
            maxcredits=15
        return maxcredits
    else:
        if results == 'Science and Technology':
            maxcredits=21
        else:
            maxcredits=15
        return maxcredits
        
def minimumsemestercredits():
    semester=semesterCheck()
    mincredits=0
    global faculty
    results=faculty
    if semester == 1:
        if results == 'Science and Technology':
            mincredits=12
        else:
            mincredits=12
        return mincredits
    else:
        if results == 'Science and Technology':
            mincredits=12
        else:
            mincredits=12
        return mincredits

def leveoneCheck(): 
    global faculty
    results = faculty
    if results == 'Science and Technology':
        leveloneneeded=24
        return leveloneneeded
    else:
        leveloneneeded=30
        return leveloneneeded 
      
        

     

 # Computing Department Rules here

def computingRequirementsCheck_Foundation():
   global courses_completed,faculty
#   getCompletedCourses()
#   foundation_courses = getFoundationcorses()
   foundation= recommendFoundation()
   no_courses=[]
   if faculty == 'Science and Technology':
       sql= "select courseID from courseinterest where interestID = 'INTLANG'"
       cursor.execute(sql)
       lang_courses = cursor.fetchall()
       answer =""
       lang= False
       
       for course in courses_completed:
           if course in lang_courses:
               lang = True 
       
       if 'FOUN1014' in foundation:
           answer = "FOUN1014 needs to be completed. "
       for i in foundation:
           if i != "FOUN1014":
               if len(foundation) >= 2:
                    answer+= "Complete <a href='#' class='alert-link' onclick='add('" + foundation[0] + "')'>" +  foundation[0] + "</a> and <a href='#' class='alert-link' onclick='add(" + foundation[1] + ")'>"  +  foundation[1] + "</a>"
               else:
                   if len(foundation) < 2:
                    answer += "Complete <a href='#' class='alert-link' onclick='add('"+ foundation[0] + "')'>" +  foundation[0] + "</a>"
                    
               if lang == False:
                    answer += " or a language course. May I suggest going to the search page and clicking help and observing number 4 which shows language options avaliable?"
               #print answer
                    
               return answer
   else:
        answer =""
        for i in foundation:
            if len(foundation) >=1:
                answer+= "Please complete all the above course(s)"
            else:
                answer+= "You have completed all your foundation courses"
            # print answer
            return answer
       

def computingleveloneCoursesCheck_faculty():
    courses_completed = getCompletedCourses()
    courses=[]
    for course in courses_completed:
        sql= 'select faculty from courses where courseID = "%s"' % course
        cursor.execute(sql)
        row = cursor.fetchone()
        # print courses_completed
        # print "faculty: ", row 
        if row is not None and row[0] == "Science and Technology":
            if firstYearCheck(course) == True:
                # print firstYearCheck(course)
                # sql= 'select credits from courses where courseID = "%s"' % course
                # cursor.execute(sql)
                # results = cursor.fetchall()
                # sumCredits+= results[0][0]
                courses.append(course)
    creditCount(courses)
                
    # print "level one ",  creditCount(courses)
    return  creditCount(courses)
    
def levelOneCheck():
    global faculty
    found=foundationcheck()
    if faculty == 'Science and Technology':
        # Checks if total 24 first year credits are completed and 18 are from faculty
        answer=''
        if firstYearCreditCheck() < leveoneCheck():
            answer+="You need " + (leveoneCheck() - firstYearCreditCheck()) + " to level one courses."
        if computingleveloneCoursesCheck_faculty() < 18:
            amt=18-computingleveloneCoursesCheck_faculty()
            answer += "18 credits of the level one courses you do needs to be in faculty, you need " + str(amt) + " more credits from the faculty"
        if firstYearCreditCheck() >= leveoneCheck() and computingleveloneCoursesCheck_faculty() >= 18:
            answer= True
        return answer
    else:
        answer=''

        if firstYearCreditCheck() < leveoneCheck():
            answer+="You need " + (leveoneCheck() - firstYearCreditCheck()) + " to level one courses."
        if firstYearCreditCheck() >= leveoneCheck() and len (found) <3:
            answer+="You need to complete all your foundation course(s) to satisfy level one requirement"
        if firstYearCreditCheck() >= leveoneCheck() and len(found) == 3:
            return True
        return answer
   
def foundationcheck():
    global courses_completed,faculty
    found=[]
    if faculty == 'Social Sciences':
        for course in courses_completed:
             sql= "select courseID from course_foundation where faculty ='{}'".format(faculty)
             cursor.execute(sql)
             results = cursor.fetchall()
             if course in results:
                 found.append(course)
        return found
    else:
        for course in courses_completed:
             sql= "select courseID from course_foundation where faculty ='{}'".format(faculty)
             cursor.execute(sql)
             results = cursor.fetchall()
             if course in results:
                 found.append(course)
        return found
    
    
def leveltwothree():
    # 60 credits from level 2 and 3
    global courses_completed
    courses=[]
    for course in courses_completed:
        if firstYearCheck(course) == False:
            courses.append(course)
    no_credits = creditCount(courses)
    # print "no_credits ", no_credits
    answer=''
    if no_credits < 60:
        answer= "You need " + str(60 - int(no_credits)) + " credits from Level II and Level III courses to graduate"
    else:
        answer = True
    return answer


def compcredits():
    # 39 credits from computing if major is computer science or software engineering 
    
    global courses_completed, major
    sql= "select Major from Studentrecords where studentID = %s " % session['id']
    cursor.execute(sql)
    major = cursor.fetchone()
    # print "major is:", major
    courses=[]
    majorcred = majorCredits() 
    if major[0] == "Computer Science" or major[0] == "Software Engineering":
        print 'courses_completed: ', courses_completed
        for course in courses_completed:
            for string in ['COMP','SWEN','INFO']:
                if string in course:
                    if firstYearCheck(course) == False:
                        courses.append(course)
                        #print courses
        print 'creditCount(courses) ', creditCount(courses) 
        if creditCount(courses) < majorcred:
            return "You need " + str(int(majorcred) - int(creditCount(courses))) + " credits from computing to graduate"
        else:
            return True
    else:
       
        majorcour= getMajorcourses()
        for course in majorcour:
            if course in courses_completed:
                if firstYearCheck(course) == False:
                    courses.append(course)
        if creditCount(courses) < majorcred:
            return "You need " + str(int(majorcred)- int(creditCount(courses))) + " credits for your major to graduate"
        else:
            return True
            
 #checks courses that cintribute to minor   
def minor_credits():
#minor
    global courses_completed
    courses=[]
    minorcred = minorCredits() 
    minorcour= compminor()
    for course in minorcour:
        if firstYearCheck(course) == False:
            courses.append(course)
    if creditCount(courses) < minorcred:
        return "You need " + str(minorcred- int(creditCount(courses))) + " credits for your minor to graduate"
    else:
        return True
    
def selectedcreditcheck(course_list):
    maxcred=maximumsemestercredits()
    mincred=minimumsemestercredits()
    selectedcredits=creditCount(course_list)
    answer=""
    if selectedcredits > maxcred:
        answer= "You are over the required number of credits eligible for the semester, by " + str(selectedcredits - maxcred) + " credits ."
    if selectedcredits < mincred:
        answer= "You are under the required number of credits eligible for the semester, by " + str(mincred - selectedcredits) + " credits ."
    if selectedcredits == mincred or selectedcredits ==  maxcred or (selectedcredits>=mincred and selectedcredits<=maxcred):
        answer= True
    return answer



def trial():
    #print "in traial"
    selectedcred =''
    if request.method == 'POST':
    
        courses=request.form['selectedCourses']
        selectedcred=selectedcreditcheck(courses)
        #print "selectedcorses: ", courses
        #print 'selectedcred: ', selectedcred
    return selectedcred
    
def minormainselection():
    global minor,courses_completed
    maincourses=[]
    courses=[]
    answer=''
    if minor == 'Psychology':
        maincourses=['PSYC2002','PSYCH2003','PSYC2004','PSYC2012','PSYC2000','PSYC2005']
        for course in courses_completed:
            if course in maincourses :
                courses.append(course)
        if len(courses) < 4:
            countcour=len(courses)
            answer = "You need " + str(4-countcour) + " more course(s) from this section."
        else:
            answer=True
        return answer
    if minor == 'Criminology':
        maincourses=['GOVT2011','SOCI3032','SOC3036']
        for course in maincourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) < 3:
            answer = "You need " + str(3-(len(courses))) + " more course(s) from this section."
        else:
            answer=True
        return answer
    if minor == 'Social Psychology':
        maincourses=['PSYC3001','PSYC3007','PSYC2004','PSYC2000']
        for course in maincourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) < 4:
            answer = "You need " + str(4-(len(courses))) + " more course(s) from this section."
        else:
            answer=True
        return answer
    if minor == 'Information Technology':
        maincourses=['INFO2110','COMP2190']
        for course in maincourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) < 2:
            answer = "You need " + str(2-(len(courses))) + " more course(s) from this section."
        else:
            answer=True
        return answer
    if minor == 'Computer Science':
        maincourses=['COMP2201','COMP2340']
        for course in maincourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) < 2:
            answer = "You need " + str(2-(len(courses))) + " course(s) from this section."
        else:
            answer=True
        return answer
    if minor == 'Software Engineering':
        maincourses=['COMP2140','COMP2170']
        for course in maincourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) < 2:
            answer = "You need " + str(2-(len(courses))) + " course(s) from this section."
        else:
            answer=True
        return answer


def minormainselectioncourses():
    global minor,courses_completed
    maincourses=[]
    courses=[]
    if minor == 'Psychology':
        maincourses=['PSYC2002','PSYC2003','PSYC2004','PSYC2012','PSYC2000','PSYC2005']
        for course in maincourses:
            if course not in courses_completed:
                courses.append(course)
            for row in courses:
                if semesterValidaton(row)==True:
                    maincourses=[]
                    maincourses.append(row)
        # desc=description(maincourses)
        # maincourses=zip(desc,maincourses)
        return maincourses
    if minor == 'Criminology':
        maincourses=['GOVT2011','SOCI3032','SOC3036']
        courses=[]
        for course in maincourses:
            if course not in courses_completed:
                courses.append(course)
        for row in courses:
            if semesterValidaton(row)==True:
                maincourses=[]
                maincourses.append(row)
        # desc=description(maincourses)
        # maincourses=zip(desc,maincourses)
        return maincourses
    if minor == 'Social Psychology':
        maincourses=['PSYC3001','PSYC3007','PSYC2004','PSYC2000']
        courses=[]
        for course in maincourses:
            if course not in courses_completed:
                courses.append(course)
        for row in courses:
            if semesterValidaton(row)==True:
                maincourses=[]
                maincourses.append(row)
        # desc=description(maincourses)
        # maincourses=zip(desc,maincourses)
        return maincourses
    if minor == 'Information Technology':
        maincourses=['INFO2110', 'COMP2190']
        courses=[]
        for course in maincourses:
            if course in courses_completed:
                maincourses.remove(course)
        for row in maincourses:
            if semesterValidaton(row)==True:
                courses=[]
                courses.append(row)
        maincourses=courses
        # desc=description(maincourses)
        # maincourses=zip(desc,maincourses)
        return maincourses
    if minor == 'Computer Science':
        maincourses=['COMP2201','COMP2340']
        courses=[]
        for course in maincourses:
            if course not in courses_completed:
                courses.append(course)
        for row in courses:
            if semesterValidaton(row)==True:
                maincourses=[]
                maincourses.append(row)
        # desc=description(maincourses)
        # maincourses=zip(desc,maincourses)
        return maincourses
    if minor == 'Software Engineering':
        maincourses=['COMP2140','COMP2170']
        courses=[]
        for course in maincourses:
            if course not in courses_completed:
                courses.append(course)
        for row in courses:
            if semesterValidaton(row)==True:
                maincourses=[]
                maincourses.append(row)
        # desc=description(maincourses)
        # maincourses=zip(desc,maincourses)
        return maincourses
  
    
def minorotherselection():
    global minor,courses_completed
    othercourses=[]
    courses=[]
    answer=''
    if minor == 'Psychology':
        othercourses=['PSYC2008','PSYC3001','PSYC3007']
        for course in othercourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) <1:
            answer = "You need " + str(1) + " course from this section."
        else:
            answer=True
        return answer
    if minor == 'Social Psychology':
        othercourses=['PSYC2006','PSYC3010']
        for course in othercourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) <1:
            answer = "You need " + str(1)  + " course from this section."
        else:
            answer=True
        return answer
    if minor == 'Criminology':
        othercourses=['GOVT2110','PSYC2000','PSYC2002','SOCI2000','SOWK2006','SOCI3046']
        for course in othercourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) <1:
            answer = "You need " + str(1)  + " course from this section."
        else:
            answer=True
        return answer
    if minor == 'Information Technology':
        othercourses=['INFO2100', 'INFO2180', 'INFO3105', 'INFO3155', 'INFO3170', 'INFO3180','INFO3435']
        for course in othercourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) <3:
            answer = "You need " + str(3- (len (courses)))  + " more course(s) from this section."
        else:
            answer=True
        return answer
    if minor == 'Computer Science':
        othercourses=['COMP2010','COMP2120','COMP2130','COMP2140','COMP2170','COMP2190','COMP2211','COMP3101','COMP3911','COMP3220', 'COMP3652', 'COMP3702', 'COMP3801']
        for course in othercourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) <3:
            answer = "You need " + str(3- (len (courses)))  + " more course(s) from this section."
        else:
            answer=True
        return answer
    if minor == 'Software Engineering':
        othercourses=['COMP2201','SWEN3130','SWEN3145','SWEN3165','SWEN3185']
        for course in othercourses:
            if course in courses_completed:
                courses.append(course)
        if len(courses) <3:
            answer = "You need " + str(3- (len (courses)))  + " more course(s) from this section."
        else:
            answer=True
        return answer

def minorotherselectioncourses():
    global minor,courses_completed
    othercourses=[]
    if minor == 'Psychology':
        othercourses=['PSYC2008','PSYC3001','PSYC3007']
        for course in othercourses:
            if course in courses_completed:
                othercourses.remove(course)
        for row in othercourses:
            if semesterValidaton(row)==True:
                courses=[]
                courses.append(row)
        othercourses=courses
        # desc=description(othercourses)
        # othercourses=zip(desc,othercourses)
        return othercourses
    if minor == 'Social Psychology':
        othercourses=['PSYC2006','PSYC3010']
        for course in othercourses:
            if course in courses_completed:
                othercourses.remove(course)
        for row in othercourses:
            if semesterValidaton(row)==True:
                courses=[]
                courses.append(row)
        othercourses=courses
        # desc=description(othercourses)
        # othercourses=zip(desc,othercourses)
        return othercourses
    if minor == 'Criminology':
        othercourses=['GOVT2110','PSYC2000','PSYC2002','SOCI2000','SOWK2006','SOCI3046']
        for course in othercourses:
            if course in courses_completed:
                othercourses.remove(course)
        for row in othercourses:
            if semesterValidaton(row)==True:
                courses=[]
                courses.append(row)
        othercourses=courses
        # desc=description(othercourses)
        # othercourses=zip(desc,othercourses)
        return othercourses
    if minor == 'Information Technology':
        othercourses=['INFO2100', 'INFO2180', 'INFO3105', 'INFO3155', 'INFO3170', 'INFO3180','INFO3435']
        for course in othercourses:
            if course in courses_completed:
                othercourses.remove(course)
        for row in othercourses:
            if semesterValidaton(row)==True:
                courses=[]
                courses.append(row)
        othercourses=courses
        # desc=description(othercourses)
        # othercourses=zip(desc,othercourses)
        return othercourses
    if minor == 'Computer Science':
        othercourses=['COMP2010','COMP2120','COMP2130','COMP2140','COMP2170','COMP2190','COMP2211','COMP3101','COMP3911','COMP3220', 'COMP3652', 'COMP3702', 'COMP3801']
        for course in othercourses:
            if course in courses_completed:
                othercourses.remove(course)
        for row in othercourses:
            if semesterValidaton(row)==True:
                courses=[]
                courses.append(row)
        othercourses=courses
        # desc=description(othercourses)
        # othercourses=zip(desc,othercourses)
        return othercourses
    if minor == 'Software Engineering':
        othercourses=['COMP2201','SWEN3130','SWEN3145','SWEN3165','SWEN3185']
        for course in othercourses:
            if course in courses_completed:
                othercourses.remove(course)
        for row in othercourses:
            if semesterValidaton(row)==True:
                courses=[]
                courses.append(row)
        othercourses=courses
        # desc=description(othercourses)
        # othercourses=zip(desc,othercourses)
        return othercourses
        
def pearson(s1,s2):
    s1_c = s1 - s1.mean()
    s2_c = s2 - s2.mean()
    return np.sum(s1_c * s2_c) / np.sqrt(np.sum(s1_c**2) * np.sum(s2_c ** 2))

def get_recs(coursecode, M):
    import numpy as np
    
    recommendations =[]
    for course in M.columns:
        if course == coursecode:
            continue
        cor = pearson(M[coursecode], M[course])
        if np.isnan(cor):
            continue
        else:
            recommendations.append((course,cor))
    recommendations.sort(key=lambda tup: tup[1], reverse=True)
    return recommendations[:10]
    
def grades_get(lst):
    global grade_option, grade_choice 
    if grade_option == 'Yes':
        grade2= grade_choice
        grades,grade_temp1, lettergrades = [],[],[]
        htmlstat = ''
        # grade2='B'
        lettergrades= ['A+','A','A-','B+','B','B-','C+','C']
        colorpick = ['96e8ab','bfe896','d4e896','e8e896','e8d496','e8bf96','e8ab96','e89996']
       
        gradeslst= lettergrades[:lettergrades.index(grade2)+1]
        # print "gradeslst: ", gradeslst
            
        courses_completed = getCompletedCourses()
        for impact_courseID in lst:
            gradecolor=[]
            for grade2,color in zip(gradeslst,colorpick):
                grade_temp1=[]
                for courseID in courses_completed:
                    # print 'courseID: ', courseID
                    sql= 'select percentage from grades where courseID = "%s" and impact_courseID = "%s" and grade1 =(select min(grade1) from (select distinct grade1 from grades where grade1 >= (select grade from lettertogrades where letter = (select grade from (select grade from studentcourses where courseID = "%s" and studentID = "%s" order by grade asc) as tgrade LIMIT 1)))as grange) and grade2 = (select min(grade2) from(select distinct grade2 from grades where grade2 >= (select grade from lettertogrades where letter = "%s")) as grade2query);' %(courseID, impact_courseID, courseID, session['id'],grade2)
                    # print 'sql:', sql
                    cursor.execute(sql)
                    percentage = cursor.fetchone()
                    # print "result: ", percentage
                    if percentage is not None:
                        grade_temp1.append(percentage[0])
                    # print 'grade_temp1: ', grade_temp1
                    
                if grade_temp1 != []:
                    maxgrades = max(grade_temp1)
                    # print "grades: ", maxgrades 
                    htmlstat = '<span data-toggle="tooltip" data-placement="top" title="The probability of you getting a ' + grade2 + ' in '+ impact_courseID + '" class=" grades ' + grade2 +'grade" style="background-color: #'+ color +'"><b> '+ grade2 +'</b> ' + str(maxgrades * 100) + '%</span>'
                    gradecolor.append(htmlstat)
                
                     
            grades.append(gradecolor)
            # print "grades: ", grades
        return grades
    else:
    
        return None
            
        
def coursenames(courselist):
    name=[]
    for course in courselist:
        sql="select course_title from courses where courseID = '{}'".format(course)
        cursor.execute(sql)
        results= cursor.fetchone()
        for row in results:
            name.append(row)
    return name
    
def compminor():
    global courses_completed,minor
    minor_courses=[]
    minorcourses=getMinorcourses()
    for course in courses_completed:
        if minor != None:
            if course in minorcourses:
                minor_courses.append(course)
    return minor_courses
    

def compfound():
    global courses_completed
    foundcour=[]
    foundation= getFoundationcorses()
    for course in courses_completed:
        if course in foundation:
           foundcour.append(course)
    return foundcour
    
def facimg():
    global faculty
    if faculty == 'Science and Technology':
        img="bn_faculty_scitech.png"
    else:
        img="bn_faculty_socsci.png"
    return img

def majimg():
    global major
    if major =='Computer Science':
        img= "CS.jpg"
        return img
    if major =='Software Engineering': 
        img='SE.jpg'
        return img
    if major =='Sociology':
        img='SOCIO.jpg'
        return img
    if major =='Demography':
        img='DEMO.jpg'
        return img
    if major =='Psychology':
        img='P.jpg'
        return img
    if major =='Social Work':
        img='SW.jpg'
        return img
    if major =='Social Anthropology':
        img='SA.jpg'
        return img
    
def minimg():
    global minor
    if minor =='Computer Science':
        img= "CS.jpg"
        return img
    if minor =='Software Engineering': 
        img="SE.jpg"
        return img
    if minor =='Sociology':
        img='SOCIO.jpg'
        return img
    if minor =='Psychology':
        img='P.jpg'
        return img
    if minor =='Criminology':
        img='CRIMI.jpg'
        return img
    if minor =='Information Technology':
        img='IT.jpg'
        return img
    

if __name__ == "__main__":
    app.run(debug=True,host="0.0.0.0",port=8080) 
    