class RenameConnectionsTable < ActiveRecord::Migration
  def change
  	rename_table :CatePostConnections, :category_post_connections
  end
end
