class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @renter_bookings = []
    @bookings.each do |booking|
        if booking.outfit.user.id == current_user.id
          @renter_bookings << booking
        end
      end

    @rentee_bookings = []
    @bookings.each do |booking|
      if booking.user.id == current_user.id
        @rentee_bookings << booking
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @booking.start_date = Date.today
    @booking.end_date = Date.tomorrow
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

  def update_state
    @booking = Booking.find(params[:booking_id])
    @booking.status = params[:status]
    @booking.save
    redirect_to bookings_path
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
