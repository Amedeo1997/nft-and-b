class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @reservation = Reservation.find(params[:id])
    @product = Product.find(params[:product_id])
    @your_products = current_user.products(params[:user_id])
  end

  def show_current_user_profile
    @user = current_user
    @reservations = current_user.reservations
    @reservations_as_host = current_user.reservations_as_host
    render 'show'
  end

end
