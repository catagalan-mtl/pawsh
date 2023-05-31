class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    if @outfit.save
      redirect_to outfit_path(@outfit)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def home
    @outfits = Outfit.all
  end

  private

  def outfit_params
    params.require(:outfit).permit(:title, :size, :animal, :description, :occasion, :price_per_day)
  end
end
