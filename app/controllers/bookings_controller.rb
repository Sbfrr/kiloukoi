class BookingsController < ApplicationController
 before_action :set_booking, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
    @booking = Booking.new
  end

  def create

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
    @booking_params = params.require(:booking).permit(:price, :description, :title)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end


end
