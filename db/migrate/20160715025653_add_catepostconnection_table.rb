class AddCatepostconnectionTable < ActiveRecord::Migration
  def change
  	create_table :CatePostConnections do |t|
      t.string :post_id
      t.string :category_id

      t.timestamps
  	end
  end
end
