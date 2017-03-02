class CreatePostDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :post_drinks do |t|
      t.references :post, foreign_key: true
      t.references :drink, foreign_key: true

      t.timestamps
    end
  end
end
