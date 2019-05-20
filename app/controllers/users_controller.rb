class UsersController < ApplicationController
  def show
    @name = current_user.name
    @tweets = current_user.tweets.page(params[:page]).per(2).order("created_at DESC")
    
  end
end
