class KitchensController < ApplicationController
  before_action :get_kitchen, only: [:edit, :update, :show, :destroy]
  def new
    @kitchen = Kitchen.new
    authorize @kitchen
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.user = current_user
    authorize @kitchen
    if @kitchen.save
      redirect_to kitchen_path(@kitchen)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @kitchen
  end

  def update
    authorize @kitchen
    @kitchen.update(kitchen_params)
    redirect_to kitchen_path(@kitchen)
  end

  def destroy
    authorize @kitchen
    @kitchen.destroy
    redirect_to root_path, status: :see_other
  end

  def show
    authorize @kitchen
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:name, :location, :availability, :features, :description, :rating, :price, :owner_info, photos: [])
  end

  def get_kitchen
    @kitchen = Kitchen.find(params[:id])
  end
end
