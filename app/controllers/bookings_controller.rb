class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @outfit = Outfit.find(params[:outfit_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.outfit_id = params[:outfit_id]
    @booking.user = current_user
    if @booking.save
      redirect_to outfit_path(params[:outfit_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
