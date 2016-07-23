class AddUserTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
      t.string :name
      t.string :phone
      t.integer :age
      t.string :nickname
      t.string :email
      t.string :interest 
  	end
  end
end
