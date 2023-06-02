class RemovePriceFromOutfit < ActiveRecord::Migration[7.0]
  def change
    remove_column :outfits, :price_cents, :integer
  end
end
