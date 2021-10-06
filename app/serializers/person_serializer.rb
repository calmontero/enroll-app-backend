class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :state, :city, :phone, :user_id
  belongs_to :user
  has_many :enroll_studies
end
