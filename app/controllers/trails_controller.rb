class TrailsController < ApplicationController

    def index
        @trails = Trail.all
    end

    def show
        @trail = Trail.find(params[:id])
        @favorite = Favorite.new
        @review = Review.new
    end

end
