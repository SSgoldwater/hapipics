class UsersController < ApplicationController
  def show
    token = session[:access_token]
    @user = User.find('self', token)
    @posts = UserFeed.find('self', token)
    @user_media = UserMedia.find('self', token)
    @hapi_tag_feed = HapiTagFeed.find(token)
  end
end
