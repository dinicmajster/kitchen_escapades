class KitchensController < ApplicationController
  def new
    @kitchen = Kitchen.new
    authorize @kitchen
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.user = current_user
    authorize @kitchen
    @kitchen.save
    # if @kitchen.save
    #   redirect_to kitchen_path
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:name, :location, :availability, :features, :description, :rating, :price, :owner_info, photos: [])
  end
end
