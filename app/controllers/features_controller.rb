class FeaturesController < ApplicationController
  def create
    @kitchen = Kitchen.find(params[:kitchen_id])
    @feature = Feature.new(feature_params)
    @feature.kitchen = @kitchen
    if @feature.save
      redirect_to kitchen_path(@kitchen)
    else
      render "kitchens/show", status: :unprocessable_entity
    end
  end

  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy
    redirect_to kitchen_path(@feature.kitchen), status: :see_other
  end

  private

  def feature_params
    params.require(:feature).permit(:name)
  end
end
