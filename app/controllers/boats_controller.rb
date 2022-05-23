class BoatsController < ApplicationController
  before_action :set_boat, only: %i[ show edit update destroy ]

  def index
    @boats = Boat.all
  end

  def show() end

  def new
    @boat = Boat.new
    @user = current_user
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user_id = current_user.id
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
  end

  def boat_params
    params.require(:boat).permit(:name, :category, :capacity, :description, :price_per_day)
  end

end
