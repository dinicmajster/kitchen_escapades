class BookingsController < ApplicationController
  before_action :get_kitchen, only: [:create, :show]

  def create
    @booking = Booking.new(booking_params)
    @booking.kitchen = @kitchen
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to kitchen_booking_path(@kitchen, @booking)
    else
      render "kitchens/show", status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def mybookings
    @mybookings = current_user.bookings.order(created_at: :asc)
    authorize @mybookings
  end

  def myrentals
    @myrentals = current_user.bookings_as_owner.order(created_at: :asc)
    authorize @myrentals
  end

  private

  def get_kitchen
    @kitchen = Kitchen.find(params[:kitchen_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :time, :duration, :kitchen_id, :user_id, :host, :groceries)
  end
end
