class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
  end

end
