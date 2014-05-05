class AddAuthorColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :author, :boolean, default: false
  end
end
