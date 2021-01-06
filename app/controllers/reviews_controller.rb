class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        @trail = Trail.find(params[:review][:trail_id])
        redirect_to @trail
    end

    private

    def review_params
        params.require(:review).permit(:text, :hiker_id, :trail_id)
    end
end
