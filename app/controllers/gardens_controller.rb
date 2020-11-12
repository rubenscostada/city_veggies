class GardensController < ApplicationController
  def index
    @gardens = Garden.all
    @search = params["search"]
    if @search.present?
      @country = @search["country"]
      @gardens = Garden.where(country: @country)
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

  private

  def garden_params
    params.require(:garden).permit(:name, :country, :description, :price_per_month)
  end
end
