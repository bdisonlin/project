class AddPostColumn < ActiveRecord::Migration
  def change
  	add_column :posts, :title, :string
  	add_column :posts, :created_at, :diatomite
  	add_column :posts, :updated_at, :diatomite
  end
end
