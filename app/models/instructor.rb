class Instructor < ApplicationRecord
    has_many :students
    has_one :cohort
    validates :first_name, presence: true
    validates :encrypted_password, presence: true
    validates :birth_date, :presence => true 
    validates :encrypted_password, presence: true
end
