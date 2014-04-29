class AddAnotherLineNumberToLessons < ActiveRecord::Migration
  def change
  	add_column :lessons, :line_number2, :integer
  	add_column :lessons, :editor_height2, :integer
  end
end
