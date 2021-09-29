class CreateEnrollStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :enroll_studies do |t|
      t.belongs_to :person, null: false, foreign_key: true
      t.belongs_to :program, null: false, foreign_key: true
      t.timestamps
    end
  end
end
