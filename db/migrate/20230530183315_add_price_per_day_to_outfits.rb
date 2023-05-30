class AddPricePerDayToOutfits < ActiveRecord::Migration[7.0]
  def change
    add_column :outfits, :price_per_day, :float
  end
end
