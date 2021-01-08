class TrailsController < ApplicationController

    

    def index
        @trails = Trail.all
    end

    def show
        @trail = Trail.find(params[:id])
        @favorite = Favorite.new
        @review = Review.new

            if @current_user
                if @current_user.trail_id.include?(@trail)
                    @user_review = Review.find_by(hiker_id: @current_user, trail_id: @trail)
                else
                    @review = Review.new
                end 
            end
        cookies[:last_visited] = @trail.id   
     end

end
