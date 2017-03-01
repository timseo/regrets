class RemoveDrinkLogoFromDrinks < ActiveRecord::Migration[5.0]
  def change
    remove_column :drinks, :drink_logo, :string
  end
end
