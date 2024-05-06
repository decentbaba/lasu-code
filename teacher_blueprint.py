from flask import Blueprint, render_template, request, url_for, redirect, session
import re 

from conn_database import connect_db
db = connect_db()
cursor = db.cursor() 

teacher_blueprint=Blueprint("teacher_blueprint", __name__, static_folder="static", template_folder="templates")

#load form

@teacher_blueprint.route('/teacher_profile')
def teacher_profile():
        # Check if user is loggedin
        if 'loggedin' in session and session['level']=="admin":
         
            cursor.execute('SELECT * FROM teacher_tb WHERE teacher_id = %s', (session['id'],))
            account = cursor.fetchone()
            # Show the profile page with account info
            return render_template('profile.html', account=account)


        # User is not loggedin redirect to login page
        return redirect(url_for('login'))



@teacher_blueprint.route('/teacher_record')
def teacher_record():
        # Check if user is loggedin
        
        if 'loggedin' in session and session['level']=="admin":
          
            cursor.execute('SELECT * FROM subjects_tb')
            data_subject = cursor.fetchall()

            cursor.execute('SELECT * FROM class_tb')
            data_class = cursor.fetchall()

            cursor.execute('SELECT * FROM teacher_tb ORDER BY surname')          
            teacher_record = cursor.fetchall()  
           
            return render_template('teacher_record.html', teacher_record=teacher_record, data_subject=data_subject, data_class=data_class)
        
        # User is not loggedin redirect to login page
        return redirect(url_for('login'))


@teacher_blueprint.route('/delete_teacher', methods =['GET'])
def delete_teacher():
  if 'loggedin' in session and session['level']=="admin":
    args = request.args
    sel_id = args.get('id')
   
    cursor.execute(f'DELETE FROM teacher_tb WHERE teacher_id = "{sel_id}"')              
    db.commit()

    return redirect(url_for('teacher_blueprint.teacher_record'))  
  else:
    return redirect(url_for('login'))
'''
@student_bp.route('/student', methods =['GET']) 
def student():
  args = request.args
  msg=''
  if 'task' in args: #check if in edit mode    
    sel_id = args.get('value')  

    cursor = conn.cursor() 
    cursor.execute('SELECT * FROM student WHERE id = "'+sel_id+'"')  
    data_preview = cursor.fetchone()            
    msg="Edit"
    return render_template('student.html', preview=data_preview)
  else: # else load add mode      
	  return render_template('student.html')

#display record
@student_bp.route('/seestudents') 
def seestudents():	 

  cursor = conn.cursor()  
  cursor.execute('SELECT * FROM student')
  data = cursor.fetchall()

  return render_template('seestudents.html', students=data)






#process the student add
@student_bp.route('/addstudent', methods=['GET', 'POST']) 
def addstudent(): 
  if request.method == 'POST': 
    surname = request.form['surname'] 
    othernames = request.form['othernames'] 
    address = request.form['address']  

    if "edit_id" in request.form: # Edit Record
      edit_id = request.form['edit_id'] 
      conn.execute('UPDATE student SET surname_name="'+surname+'", other_name="'+othernames+'", address_address="'+address+'" WHERE id = "'+edit_id+'"')              
      conn.commit()
        
      return redirect('student?task=edit&value='+edit_id+'&done=1')

    else: #Add  Record 
      conn.execute('INSERT INTO student (surname_name,other_name,address_address) VALUES (?,?,?)',(surname, othernames, address)) 
      conn.commit() 
    
      output="Student record saved"
      return render_template('student.html', msg=output) 



'''        