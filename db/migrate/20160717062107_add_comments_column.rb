class AddCommentsColumn < ActiveRecord::Migration
  def change
  	add_column :comments, :post_id, :integer
  	add_column :comments, :user_id, :integer
  	add_column :comments, :created_at, :diatomite
  	add_column :comments, :updated_at, :diatomite
  end
end
