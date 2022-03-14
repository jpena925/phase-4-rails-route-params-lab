class StudentsController < ApplicationController

  def index
    name = params[:name]
    students = !name ? Student.all : Student.all.filter{
      |student| student.last_name.downcase == name || student.first_name.downcase == name}
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
  

end
