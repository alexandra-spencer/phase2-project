class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
        @trail = Trail.find(params[:trail_id])
    end

    def create
        @current_hiker.reviews << Review.create(review_params)
        @trail = Trail.find(params[:review][:trail_id])
        redirect_to @trail
    end

    def edit 
        @review = Review.find(params[:id])
        @trail = Trail.find(params[:trail_id])
    end 

    private

    def review_params
        params.require(:review).permit(:text, :rating, :hiker_id, :trail_id)
    end
end
