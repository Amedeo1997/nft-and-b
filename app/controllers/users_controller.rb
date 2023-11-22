class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @reservation = Reservation.find(params[:id])
  end

  def show_current_user_profile
    @user = current_user
    render 'show'
  end
end
