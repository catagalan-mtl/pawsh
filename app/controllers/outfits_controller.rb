class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
    @markers = @outfits.geocoded.map do |outfit|
      {
        lat: outfit.latitude,
        lng: outfit.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {outfit: outfit})
      }
    end
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = current_user
    if @outfit.save
      redirect_to outfit_path(@outfit)
    else
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
