class Person < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password_digest, length: { in: 6..20 }
end
