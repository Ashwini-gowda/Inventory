class AddStockidToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stock_id, :integer
  end
end
