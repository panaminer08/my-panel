class Instructor < ApplicationRecord
    has_many :students
    has_one :cohort
    # validates :first_name, presence: true, length: {minimum: 3, maximum: 15}
    # validates :encrypted_password, presence: true
end
