class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :quantity
      t.text :address
      t.string :status

      t.timestamps
    end
  end
end
