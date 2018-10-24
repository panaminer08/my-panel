class Instructor < ApplicationRecord
    has_many :students
    has_one :cohort
    validates :first_name, presence: true
    validates :encrypted_password, presence: true
    validates :age, numericality: { less_than_or_equal_to: 150,  only_integer: true }
    def age
        if age > 150
            errors.add(:age, 'sorry, too old to attend')
        end
    end
end
