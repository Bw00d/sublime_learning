class AddEditableCodeToLesson < ActiveRecord::Migration
  def change
  	add_column :lessons, :editable_code, :text
  	add_column :lessons, :answer, :text
  end
end
