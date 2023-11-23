class ReservationsController < ApplicationController
  before_action :set_product, :authenticate_user!

  def new
    @reservation = Reservation.new
  end

  def create
    @product = Product.find(params[:product_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.product = Product.find(params[:product_id])
    if @reservation.save
      redirect_to my_profile_path(@user)
    else
      render :new
    end
  end

  def index
    @reservations = current_user.reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def accept
    @reservation = Reservation.find(params[:id])
    if @reservation.accept
      redirect_to my_profile_path(@user)
    end
  end

  def reject
    @reservation = Reservation.find(params[:id])
    if @reservation.reject
      redirect_to my_profile_path(@user)
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :status)
  end
end
