class TweetsController < ApplicationController
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.user = current_user
    @tweet.save
  end
  
end

