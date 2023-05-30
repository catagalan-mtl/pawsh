class RenameOcasionToOccasion < ActiveRecord::Migration[7.0]
  def change
    rename_column :outfits, :ocasion, :occasion
  end
end
