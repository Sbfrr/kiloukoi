class BookingsController < ApplicationController
 before_action :set_booking, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def create
    booking = current_user.bookings.create(booking_params)
    stay_length = (booking.departure - booking.arrival).to_i
    booking.price = stay_length * booking.item.price
    redirect_to profile_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    @booking_params = params.require(:booking).permit(:item_id, :arrival, :departure)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
