class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.belongs_to :program, null: false, foreign_key: true
      t.string :start
      t.string :end
      t.integer :cost
      t.boolean :status

      t.timestamps
    end
  end
end
