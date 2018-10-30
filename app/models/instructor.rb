class Instructor < ApplicationRecord
    has_many :students
    has_one :cohort
    validates :first_name, presence: true
    validates :encrypted_password, presence: true
    validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
    validates :salary, :numericality => { :greater_than_or_equal_to => 0 }
end
