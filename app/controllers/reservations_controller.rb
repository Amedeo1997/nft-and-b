class ReservationsController < ApplicationController
  before_action :set_product, :authenticate_user!

  def new
    @reservation = Reservation.new
  end
  # Add any necessary data to populate the form

  def create
    @product = Product.find(params[:product_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.product = Product.find(params[:product_id])
    if @reservation.save
      redirect_to @product
    else
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end
  # Add any additional logic needed for displaying a reservation

  def index
    @reservations = current_user.reservations
  end
  # Add any additional logic needed for displaying a list of reservations

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def reservation_params
    # Define the parameters allowed for reservation creation
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
