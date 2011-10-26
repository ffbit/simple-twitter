class TweetsController < ApplicationController
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.user = current_user
    @tweet.save
  end
  
  def more
    page_of_tweets(params)
  end
  
end

