class EnrollStudySerializer < ActiveModel::Serializer
  attributes :id, :start, :progress, :person_id, :program_id

end
