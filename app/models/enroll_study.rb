class EnrollStudy < ApplicationRecord
    belongs_to :person
    has_many :programs
end
