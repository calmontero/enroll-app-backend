class Program < ApplicationRecord
    has_many :enroll_studies
    has_many :schedules
end
