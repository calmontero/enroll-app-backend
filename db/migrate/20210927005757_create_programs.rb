class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :summary
      t.string :duration
      t.string :image_url
      t.integer :rating

      t.timestamps
    end
  end
end
