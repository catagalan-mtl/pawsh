class AddAddressToOutfits < ActiveRecord::Migration[7.0]
  def change
    add_column :outfits, :address, :string
  end
end
