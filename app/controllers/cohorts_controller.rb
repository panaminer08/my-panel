class CohortsController < ApplicationController
    def index
    end
  
    def show
      @cohort = Cohort.all
    end
  
    def update
      @cohort = Cohort.find(params[:id])
      @cohort.update(cohort_params)
      redirect_to '/cohorts/show'
    end
  
    def destroy
      @cohort = Cohort.find(params[:id])
      @cohort.destroy
      respond_to do |format|
        format.js
      end
    end
  
    def new
      @cohort = Cohort.new
      @instructor = Instructor.all.map{|t| [t.id]}
      @course = Course.all.map{|h| [h.id]}
    end
  
    def create
      @cohort = Cohort.create(cohort_params)
      @cohort.save
  
      redirect_to '/cohorts/show'
    end
  
    def edit
      @cohort = Cohort.find(params[:id])
      @instructor = Instructor.all.map{|i| [i.id]}
      @course = Course.all.map{|c| [c.id]}  
    end
  
    private
  
    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date, :courses_id, :instructors_id)
    end
end
