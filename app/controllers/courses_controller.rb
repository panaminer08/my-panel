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
      @course.update(course_params)
      redirect_to course_path
    end
  
    def create
      @course = Course.create(course_params)
      @course.save
  
      redirect_to course_path(@course)
    end

    def destroy
      @course = Course.find(params[:id])
      @course.destroy
      respond_to do |format|
        format.js
      end
    end
  
    def new
      @course = Course.new
      @cohort = Cohort.all
    end
  
    private
  
    def course_params
      params.require(:course).permit(:name, :in_class_hours)
    end
  end
 
