class CartElements < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :user_id, :integer
    add_column :carts, :product_id, :string
  end
end
