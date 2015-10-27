class OauthController < ApplicationController
  #CALLBACK_URL = "http://hapipics.herokuapp.com/oauth/callback/"
   CALLBACK_URL = "http://127.0.0.1:3000/oauth/callback/"

  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    session[:user] = response.user
    redirect_to user_path
  end

  def logout
    session.destroy
    redirect_to root_path
  end
end
