class AddOneOrderColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :cart_id, :integer
  end
end
