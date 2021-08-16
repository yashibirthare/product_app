class AddColumntoOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :status, :string
    rename_column :orders, :totalprice, :amount
  end
end
