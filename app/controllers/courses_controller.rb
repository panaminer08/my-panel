class CoursesController < ApplicationController
    def index
    end
  
    def show
      @course = Course.all
    end
  
    def edit
      @course = Course.find(params[:id])
    end
  
    def update
      @course = Course.find(params[:id])
      @course.update(cohort_params)
    end
  
    def destroy
    end
  
    def create
      @course = Course.create(course_params)
      @course.save
  
      redirect_to course_path
    end
  
    def new
      @course = Course.new
      @cohort = Cohort.all
    end
  
    def logout
      session[:admin_id] = nil
      redirect_to admins_path
    end
  
    private
  
    def course_params
      params.require(:course).permit(:name, :in_class_hours)
    end
end
