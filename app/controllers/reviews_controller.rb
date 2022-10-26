class ReviewsController < ApplicationController
  def new
    @review = Review.new
    redirect_to action: :create
  end
 
  def create
    @review = Review.find(params[:review_params])
    @review = @order.reviews.create(review_params)
    redirect_to root_path
  end

  private
  def review_params
    params.require(:review).permit(:review, :dish_id)
  end
end
