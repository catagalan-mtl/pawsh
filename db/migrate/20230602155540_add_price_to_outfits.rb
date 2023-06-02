class AddPriceToOutfits < ActiveRecord::Migration[7.0]
  def change
    add_column :outfits, :price_cents, :integer
  end
end
