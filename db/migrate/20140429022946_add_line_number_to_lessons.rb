class AddLineNumberToLessons < ActiveRecord::Migration
  def change
  	add_column :lessons, :line_number, :integer
  	add_column :lessons, :editor_height, :integer
  end
end
