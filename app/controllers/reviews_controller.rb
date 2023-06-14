class ReviewsController < ApplicationController
  def create
    @kitchen = Kitchen.find(params[:kitchen_id])
    @review = Review.new(review_params)
    @review.kitchen = @kitchen
    if @review.save
      redirect_to kitchen_path(@kitchen)
    else
      render "kitchen/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
