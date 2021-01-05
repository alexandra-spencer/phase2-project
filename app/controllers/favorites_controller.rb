class FavoritesController < ApplicationController

  def create
    @current_hiker.favorites << Favorite.create(favorite_params)
    redirect_to hiker_path(@current_hiker)
  end

  private

  def favorite_params
    params.require(:favorite).permit(:rating, :trail_id)
  end

end
