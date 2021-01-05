class ApplicationController < ActionController::Base

  before_action :authorized?

  def find_current_hiker
    @current_hiker = Hiker.find_by(id: session[:hiker_id])
  end

  def authorized?
    redirect_to new_hiker_path unless find_current_hiker
  end
end
