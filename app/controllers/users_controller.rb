class UsersController < ApplicationController
  def show
    @user = session[:user]
  end
end
