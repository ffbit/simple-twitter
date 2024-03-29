class TweetsController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.user = current_user
    @tweet.save
  end
  
  def more
    page_of_tweets(params)
  end
  
  def destroy
    Tweet.destroy(params[:id])
  end
  
end

