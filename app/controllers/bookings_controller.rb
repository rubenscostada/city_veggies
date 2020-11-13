class BookingsController < ApplicationController
  def create
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new(booking_params)
    @booking.garden = @garden
    @booking.user = current_user
    if @booking.save!
      redirect_to dashboard_rentals_path
    else
      render 'gardens/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end)
  end
end

# gardens/:id --> GET
# gardens/:id/bookings --> POST
