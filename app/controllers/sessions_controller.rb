class SessionsController < ApplicationController

  skip_before_action :authorized?, only: [:new, :create]

  def reset_page_visits
    session.delete(:page_visits)
    redirect_back fallback_location: hikers_path
  end

  def logout
    session.delete(:hiker_id)
    redirect_to login_path
  end


  
end



