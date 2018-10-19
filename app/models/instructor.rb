class Instructor < ApplicationRecord
    has_many :students
    has_one :cohort
end
