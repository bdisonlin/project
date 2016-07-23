class AddCategoryTable < ActiveRecord::Migration
  def change
  	create_table :categorys do |t|
      t.string :title
      t.string :user_id
  	end
  end
end
