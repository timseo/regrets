class DropPostDrinksTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :post_drinks
  end
end
