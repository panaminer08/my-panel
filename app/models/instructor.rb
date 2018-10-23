class Instructor < ApplicationRecord
    has_many :students
    has_one :cohort
    validates :first_name, presence: true
    # validates :birth_date,  numericality: { greater_than: 2018 }
    # validates :birth_date, numericality: { less_than: 1867 }
    validates :encrypted_password, presence: true
end
