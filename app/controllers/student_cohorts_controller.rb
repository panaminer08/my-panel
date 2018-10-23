class StudentCohortsController < ApplicationController
    def index
    end
  
    def show
      @student_cohorts = StudentCohort.all
    end
  
    def edit
      @student_cohorts = StudentCohort.find(params[:id])
      @student = Student.all.map{|r| [r.first_name, r.id]}
      @cohort = Cohort.all.map{|t| [t.name, t.id]}
    end
  
    def update
      @student_cohorts = StudentCohort.find(params[:id])
      @cohort = Cohort.all.map{|q| [q.name, q.id]}
      @student_cohorts.update(student_cohorts_params)
      redirect_to '/student_cohorts/show'
    end
  
    def destroy
      @student_cohort = StudentCohort.find(params[:id])
      respond_to do |format|
        format.js
      end
    end
  
    def new
      @student_cohorts = StudentCohort.new
      @student = Student.all.map{ |t| [t.id]}
      @cohort = Cohort.all.map{|g| [g.id]}
    end
  
    def create
      student_cohorts = StudentCohort.create(
        student_cohorts_params
        )

      student_cohorts.save
      redirect_to '/student_cohorts/show'
    end
  
    private
  
    def student_cohorts_params
      params.require(:student_cohort).permit(:cohort_id, :student_id)
    end
end
