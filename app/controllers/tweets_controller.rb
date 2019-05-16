class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order(created_at: :DESC)
  end

  def new
    @tweet = Tweet.new
  end

  def create
  
  end
end
