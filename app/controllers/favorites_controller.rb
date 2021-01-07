class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.hiker_id = @current_hiker.id

    if @favorite.save
      redirect_to trail_path(@favorite.trail)
    else
      flash[:errors] = @favorite.errors.full_messages
      redirect_to trail_path(@favorite.trail)
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:rating, :trail_id)
  end


end
