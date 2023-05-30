class AddAnimalToOutfits < ActiveRecord::Migration[7.0]
  def change
    add_column :outfits, :animal, :string
  end
end
