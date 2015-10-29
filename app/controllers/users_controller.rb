class UsersController < ApplicationController
  def show
    token = session[:access_token]
    @user = User.find('self', token).data
    @posts = UserFeed.find('self', token).data.map! { |post| Post.new(post) }
  end
end
