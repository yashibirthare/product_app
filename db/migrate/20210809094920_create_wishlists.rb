class CreateWishlists < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlists do |t|
      t.column :product_id, :integer
      t.column :cart_id, :integer
      t.column :price, :decimal

      t.timestamps
    end
  end
end
