class UsersController < ApplicationController
  def show
    token = session[:access_token]
    @user = User.find('self', token)
    @posts = UserFeed.find('self', token).data.map! { |post| Post.new(post) }
    @user_media = UserMedia.find('self', token).data.map! { |post| Post.new(post) }
  end
end
