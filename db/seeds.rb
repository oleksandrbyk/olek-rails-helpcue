# Creater Users
teacher1 = User.create(first_name: 'Teacher', last_name: 'One', email: 'teacher1@fakemail.com', password: '1234', password_confirmation: '1234')

teacher2 = User.create(first_name: 'Teacher', last_name: 'Two', email: 'teacher2@fakemail.com', password: '1234', password_confirmation: '1234')

student1 = User.create(first_name: 'Student', last_name: 'One', email: 'student1@fakemail.com', password: '1234', password_confirmation: '1234')

student2 = User.create(first_name: 'Student', last_name: 'Two', email: 'student2@fakemail.com', password: '1234', password_confirmation: '1234')

# Create Classroom
sample_classroom = Classroom.new(name: 'Sample Classroom', description: 'This classroom is used for testing and demonstration purposes only.')
sample_classroom.owner = teacher1
sample_classroom.save
sample_classroom.classroom_users.create(user: teacher1, role: 'Admin')

# Teacher Two joins
sample_classroom.classroom_users.create(user: teacher2, role: 'Admin')

# Students One & Two join
sample_classroom.classroom_users.create(user: student1, role: 'User')
sample_classroom.classroom_users.create(user: student2, role: 'User')

