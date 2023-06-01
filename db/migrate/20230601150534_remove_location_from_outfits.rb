class RemoveLocationFromOutfits < ActiveRecord::Migration[7.0]
  def change
    remove_column :outfits, :address, :string
  end
end
