class OauthController < ApplicationController
  CALLBACK_URL = "http://127.0.0.1:3000/oauth/callback/"
  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end
end
