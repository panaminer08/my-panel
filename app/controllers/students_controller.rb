class StudentsController < ApplicationController
    def index
    end
  
    def show
      @student = Student.all
    end
  
    def edit
      @student = Student.find(params[:id])
    end
  
    def update
    end
  
    def destroy
    end
  
    def new
      @student = Student.new
      render new_student_path
    end
  
    def create
      @student = Student.create(student_params)
      redirect_to 
    end
  
    private

    def student_params
      params.require(:student).permit(:first_name, :last_name, :id, :username, :encrypted_password, :birth_date, :highest_completed_education)
    end
end
