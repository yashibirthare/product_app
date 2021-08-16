class AddCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :cart_id, :integer
  end
end
