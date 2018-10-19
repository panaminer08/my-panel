class InstructorsController < ApplicationController
    def index
    end
  
    def show
      @instructor = Instructor.all
    end
  
    def edit
      @instructor = Instructor.find(params[:id])
    end
  
    def update
      @instructor = Instructor.find(params[:id])
      @instructor.update(instructor_params)
    end
  
    def destroy
    end
  
    def new
      @instructor = Instructor.new
      render new_instructor_path
    end
  
    def create
      @instructor = Instructor.create(instructor_params)
      @instructor.save
  
      redirect_to instructor_path
    end
  
    private
  
    def instructor_params
      params.require(:instructor).permit(:first_name, :last_name, :username, :encrypted_password, :birth_date, :salary, :highest_completed_education)
    end
end
