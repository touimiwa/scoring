class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @foot = Foot.find(params[:foot_id])
    @reviews = @foot.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to foot_reviews_path(@review.foot)
    else
      @foot = Foot.find(params[:id])
      render 'foot/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:foot_id, :score, :content, :one_member_id, :two_member_id)
  end
end
