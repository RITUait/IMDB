class ReviewsController < ApplicationController
before_action  :authenticate_user!  
 # def index
 #   @reviews = Review.all
#end

  def new 
    @review = Review.new(resource_id: params[:resource_id],resource_type: params[:resource_type])
end
  
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to @review.resource
    else
      p @review.errors.inspect
      render :new
  end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update_attributes(review_params)
      redirect_to reviews_path
    else
      render :new
    end
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to reviews_path
  end

  private

def review_params
  params.require(:review).permit(:title ,:rating , :comment,:resource_id,:resource_type)
end
end 

