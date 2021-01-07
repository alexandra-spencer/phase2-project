class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def new
        @review = Review.new
        @trail = Trail.find(params[:trail_id])
    end

    def create
        @review =  Review.new(review_params)
        @review.hiker_id = @current_hiker.id

        if @review.save
            redirect_to trail_path(@review.trail)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to trail_path(@review.trail)
        end
    end

    def edit
        @review = Review.find(params[:id])
        @trail = Trail.find(params[:trail_id])
    end

    private

    def review_params
        params.require(:review).permit(:text, :rating, :trail_id)
    end
end
