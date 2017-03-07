class StudentsController < ApplicationController
  def new
      @student = Student.new
  end
  
  def create
     @student =  Student.new(student_params)
     if @student.save
         redirect_to new_student_path, notice: "Student sent"
     else
         redirect_to new_student_path, notice: "ERROR"
     end
  end
  
  private
  def student_params
      params.require(:student).permit(:name, :email, :comments)
  end
end
