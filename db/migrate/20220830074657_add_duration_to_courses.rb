class AddDurationToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :duration, :integer, default: 40
  end
end
