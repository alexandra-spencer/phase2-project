class SessionsController < ApplicationController

  skip_before_action :authorized?, only: [:new, :create]

  def reset_page_visits
<<<<<<< HEAD
=======
    cookies[:page_visits] = nil
>>>>>>> ced11a7d619d297de0b860014f62fc00cb4718d9
    session.delete(:page_visits)
    redirect_back fallback_location: hikers_path
  end

  def logout
    session.delete(:hiker_id)
    redirect_to login_path
  end
<<<<<<< HEAD


  
=======
>>>>>>> ced11a7d619d297de0b860014f62fc00cb4718d9
end



