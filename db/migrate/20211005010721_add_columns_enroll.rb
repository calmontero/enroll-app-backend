class AddColumnsEnroll < ActiveRecord::Migration[6.1]
  def change
    add_column :enroll_studies, :start, :datetime
    add_column :enroll_studies, :end, :datetime
    add_column :enroll_studies, :progress, :integer
  end
end
