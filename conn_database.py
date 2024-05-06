#import mysql.connector
#from mysql.connector import Error
import pymysql

def connect_db():
	#create and connect to the database
	#db = pymysql.connect('localhost', 'root', 'onuorah12', 'project_school_portal')
	# 	
	db = pymysql.connect(host='localhost',user='root',password='onuorah12',database='project_school_portal')
	db.ping(reconnect=True)			
	return db