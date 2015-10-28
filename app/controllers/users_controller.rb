class UsersController < ApplicationController
  def show
    token = session[:access_token]
    @user = User.find('self', token).data
    @feed = UserFeed.find('self', token).data
  end
end
