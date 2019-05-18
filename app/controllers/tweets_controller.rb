class TweetsController < ApplicationController

  before_action :move_to_index, except: [:index]

  def index
    @tweets = Tweet.all.includes(:user).order(created_at: :DESC).page(params[:page]).per(3)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweets: tweet_params[:tweets],user_id: current_user.id)
    redirect_to action: "index"
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end


  def update
    tweet = Tweet.find(params[:id])
    
    tweet.update(tweets: tweet_params[:tweets],user_id: current_user.id)
     else
    redirect_to :action => "index"
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to :action => "index"
  end

  private
  def tweet_params
    params.require(:tweet).permit(:tweets)
  end

  def move_to_index
    redirect_to action: "index" unless user_signed_in?
  end

end
