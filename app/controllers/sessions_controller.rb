class SessionsController < ApplicationController

  def new
    redirect_to '/auth/facebook'
  end

  def create

    user= User.find_or_create_from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_url
  end
end
