class DashboardController < ApplicationController
  def garden
    @user = current_user
    @gardens = Garden.where user_id: @user.id
  end

  def booking
  end

  def rental
  end
end


