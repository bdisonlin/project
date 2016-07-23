class AddPostTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
      t.string :user_id
      t.text :content
  	end
  end
end
