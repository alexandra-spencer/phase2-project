class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        if review.valid?
            redirect_to trail_path(@review.trail.id)
        else
            flash[:errors] = @review.errors.full_messages
            # redirect_to trail_path(@review.trail.id)
        end
    end

    private

    def review_params
        params.require(:review).permit(:text, :hiker_id, :trail_id)
    end
end
