class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = current_user
    if @outfit.save
      # raise
      redirect_to outfit_path(@outfit)
    else
      raise
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @outfit = Outfit.find(params[:id])
  end

  private

  def outfit_params
    params.require(:outfit).permit(:title, :size, :animal, :description, :occasion, :price_per_day, photos: [])
  end
end
