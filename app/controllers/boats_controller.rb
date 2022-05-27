class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_boat, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @boats = Boat.search_by_columns("%#{params[:query]}%")
    else
      @boats = Boat.all
    end
  end

  def show
    authorize @boat
    @booking = Booking.new
    authorize @booking
  end

  def new
    @boat = Boat.new
    @user = current_user
    authorize @boat
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    authorize @boat
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit() end

  def update
    @boat.update(boat_params)
    redirect boat_path(@boat)
  end

  def destroy
    @boat.destroy
    redirect_to root_path
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
    authorize @boat
  end

  def boat_params
    params.require(:boat).permit(:name, :category, :capacity, :description, :price_per_day, :location, photos: [])
  end
end
