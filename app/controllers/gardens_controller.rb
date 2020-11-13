class GardensController < ApplicationController
  def index
    if params[:search]
      if params[:search][:country].present?
        @gardens = Garden.search_by_name_country_and_city(params[:search][:country])
      else
        @gardens = Garden.all
      end
    else
      @gardens = Garden.all
    end
    
    @markers = @gardens.geocoded.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude
      }
    end
  end

  def show
    @garden = Garden.find(params[:id])
    @booking = Booking.new
    @user = current_user
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to dashboard_gardens_path
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :country, :description, :price_per_month, :photo)
  end
end
