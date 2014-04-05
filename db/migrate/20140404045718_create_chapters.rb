class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
    	t.column :name, :string

    	t.timestamps
    end
    add_column :lessons, :chapter_id, :integer
  end
end
