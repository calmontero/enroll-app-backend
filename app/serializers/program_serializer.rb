class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :duration, :image_url, :rating

  has_many :enroll_studies
end
