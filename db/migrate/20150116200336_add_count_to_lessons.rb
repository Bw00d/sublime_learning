class AddCountToLessons < ActiveRecord::Migration
  def change
  	add_column :lessons, :count, :integer
  end
end
