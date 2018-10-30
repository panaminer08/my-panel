class Cohort < ApplicationRecord
    belongs_to :course
    has_many :student_cohorts
    has_many :students, through: :student_cohorts
    has_one :instructor
end
