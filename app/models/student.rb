class Student < ApplicationRecord
    has_many :instructors
    has_many :cohorts,  through: :student_cohorts
    has_many :student_cohorts
end
