class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :hours, :image

  has_many :enroll_studies
  has_many :schedules
end
