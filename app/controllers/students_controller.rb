class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students

    end
    def grades
        # In the grades action, return JSON data representing a list of all students, ordered by grade from highest to lowest
        students = Student.order(grade: :desc)
        render json:students
    end
    def highest_grade 
        # In the highest_grade action, return JSON data representing the one student with the highest grade
        
        students =Student.order(grade: :desc).first
        render json:students
    end
end
