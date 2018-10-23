class Student < ApplicationRecord
    has_many :instructors
    has_many :student_cohorts
    has_many :cohorts, through: :student_cohorts
    validates :first_name, presence: true
    validates :encrypted_password, presence: true
    validates :birth_date, :presence => true 
end
