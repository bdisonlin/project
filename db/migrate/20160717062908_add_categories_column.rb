class AddCategoriesColumn < ActiveRecord::Migration
  def change
  	rename_table :categorys, :categories
  	remove_column :categories, :user_id
  	add_column :categories, :created_at, :datetime
  	add_column :categories, :updated_at, :datetime
  end
end
