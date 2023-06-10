class BookingsController < ApplicationController
  before_action :get_kitchen, only: [:new, :create]

  def new
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.kitchen = @kitchen
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to kitchen_path(@kitchen)
    else
      render "kitchens/show", status: :unprocessable_entity
    end
  end

  private

  def get_kitchen
    @kitchen = Kitchen.find(params[:kitchen_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :time, :duration, :kitchen_id, :user_id, :host, :groceries)
  end
end
