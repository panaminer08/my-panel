class CohortsController < ApplicationController
    def index
    end
  
    def show
      @cohort = Cohort.all
    end
  
    def update
      @cohort = Cohort.find(params[:id])
      @cohort.update(cohort_params)
    end
  
    def destroy
    end
  
    def new
      @cohort = Cohort.new
      @instructor = Instructor.all.map{|t| [t.first_name]}
      @course = Course.all.map{|h| [h.id]}
    end
  
    def create
      @cohort = Cohort.create(cohort_params)
      @cohort.save
  
      redirect_to admins_path
    end
  
    def edit
      @cohort = Cohort.find(params[:id])
      @instructor = Instructor.all.map{|t| [t.first_name]}
      @course = Course.all.map{c| [c.name]}  
    end
  
    private
  
    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date)
    end
end
