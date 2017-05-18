from flask import Flask
app = Flask(__name__)
app.config.from_object(__name__)

#db = MySQLdb.connect("localhost", "root", "", "records" )

from app import views
