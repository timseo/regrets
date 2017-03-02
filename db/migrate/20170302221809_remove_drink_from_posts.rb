class RemoveDrinkFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_reference :posts, :drink, foreign_key: true
  end
end
