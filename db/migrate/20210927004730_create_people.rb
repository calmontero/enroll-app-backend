class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :state
      t.string :city
      t.string :phone
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
