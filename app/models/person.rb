class Person < ApplicationRecord
    belongs_to :user
    has_many :enroll_studies
    
    validates :first_name, presence: true
    validates :last_name, presence: true
end
