class DashboardController < ApplicationController
  def garden
    @user = current_user
    @gardens = Garden.where user_id: @user.id
  end

  def booking
    @user = current_user
    @bookings = @user.garden_bookings
  end

  def rental
    @user = current_user
    @bookings = @user.bookings
  end
end
