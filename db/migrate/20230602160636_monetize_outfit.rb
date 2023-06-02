class MonetizeOutfit < ActiveRecord::Migration[7.0]
  def change
    add_monetize :outfits, :price
  end
end
