class RemoveRedundantTablesFromLessons < ActiveRecord::Migration
  def change
  	remove_column :lessons, :content2
    remove_column :lessons, :editable_code2
    remove_column :lessons, :answer2
    remove_column :lessons, :editor_height
    remove_column :lessons, :line_number2
    remove_column :lessons, :editor_height2
  end
end
