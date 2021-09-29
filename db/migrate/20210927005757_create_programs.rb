class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :summary
      t.integer :hours
      t.string :image

      t.timestamps
    end
  end
end
