class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @outfits = Outfit.all
  end
end
