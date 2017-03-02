class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :drink, foreign_key: true
      t.references :post, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
