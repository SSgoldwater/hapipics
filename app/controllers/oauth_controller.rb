class OauthController < ApplicationController
  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => ENV["callback_url"])
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => ENV["callback_url"])
    session[:access_token] = response.access_token
    session[:user] = response.user
    redirect_to user_path
  end

  def logout
    session.destroy
    redirect_to root_path
  end
end
