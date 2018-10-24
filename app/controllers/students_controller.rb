class StudentsController < ApplicationController
    def index
      # @students = Student.all
    end
  
    def show
      @student = Student.all
    end
  
    def edit
      @student = Student.find(params[:id])
    end
  
    def update
      # @student = Student.find(params[:id])
      @student = Student.update(student_params)
      redirect_to student_path(@student)
    end
  
    def destroy
      @student = Student.find(params[:id])
      @student.destroy
      respond_to do |format|
        format.js
      end
    end
  
    def new
      @student = Student.new
      render new_student_path
    end
  
    def create
      @student = Student.create(student_params)
      @student.save

      redirect_to "/students/show"
    end
  
    private

    def student_params
      params.require(:student).permit(:first_name, :last_name, :username, :encrypted_password, :age, :highest_completed_education)
    end
end
