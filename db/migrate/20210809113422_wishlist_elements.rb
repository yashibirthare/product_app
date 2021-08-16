class WishlistElements < ActiveRecord::Migration[6.1]
  def change
    remove_column :wishlists, :wishlist_id
  end
end
