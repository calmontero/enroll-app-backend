class EnrollStudySerializer < ActiveModel::Serializer
  attributes :id, :start, :end, :progress, :person_id, :program_id

  belongs_to :person
  has_many :programs
end
