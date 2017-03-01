class AddAttachmentDrinkLogoToDrinks < ActiveRecord::Migration
  def self.up
    change_table :drinks do |t|
      t.attachment :drink_logo
    end
  end

  def self.down
    remove_attachment :drinks, :drink_logo
  end
end
