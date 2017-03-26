from views import app
from flask import render_template, request, redirect, url_for, flash, session, Flask, abort

@app.route('/recommendations/')
def recommendations():
    if not session.get('logged_in'):
        return redirect (url_for('login')) 
    return render_template("recommendations.html")