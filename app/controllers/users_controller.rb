class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @reservation = Reservation.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def show_current_user_profile
    @user = current_user
    @reservations = current_user.reservations
    render 'show'
  end
end
