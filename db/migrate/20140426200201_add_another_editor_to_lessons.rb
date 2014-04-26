class AddAnotherEditorToLessons < ActiveRecord::Migration
  def change
  	add_column :lessons, :content2, :text
  	add_column :lessons, :editable_code2, :text
  	add_column :lessons, :answer2, :text
  end
end
