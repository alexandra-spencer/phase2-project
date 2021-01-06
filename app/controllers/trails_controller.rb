class TrailsController < ApplicationController

    def index
        @trails = Trail.all
    end

    def show
        @trail = Trail.find(params[:id])
        @favorite = Favorite.new
        @review = Review.new
        # @user_review = Review.find_by(hiker_id)
        cookies[:last_visited] = @trail.id
    end


end
