class StudentCohortsController < ApplicationController
    def index
    end
  
    def show
      @student_cohorts = StudentCohort.all
    end
  
    def edit
      @student_cohorts = Student_Cohorts.find(params[:id])
      @student = Student.all.map{|r| [r.first_name, r.id]}
      @cohort = Cohort.all.map{|t| [t.name, t.id]}
    end
  
    def update
      @student_cohorts = Student_Cohorts.find(params[:id])
      @cohort = Cohort.all.map{|q| [q.name, q.id]}
      @student_cohorts.update(student_cohorts_params)
    end
  
    def destroy
    end
  
    def new
      @student_cohorts = StudentCohort.new
      @student = Student.all.map{ |t| [t.first_name,t.id]}
      @cohort = Cohort.all.map{|g| [h.name, h.id]}
    end
  
    def create
      @student_cohorts = StudentCohort.create(student_cohorts_params)
      @student_cohorts.save
    end
  
    private
  
    def student_cohorts_params
      params.require(:student_cohorts).permit(:cohort_id, :student_id)
    end
end
