class AddConnectedFieldsToSpreePosts < ActiveRecord::Migration
  def change
    add_column :spree_posts, :products_title, :string
    add_column :spree_posts, :link_title, :string
  end
end
