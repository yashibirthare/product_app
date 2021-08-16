class AddOrderColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :quantity, :integer
    add_column :orders, :totalprice, :decimal
    add_column :orders, :payment_id, :integer
    
  end
end
