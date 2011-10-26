class UsersController < ApplicationController
  
  def show
  end
  
  def home
    @tweet = Tweet.new
    page_of_tweets(params)
  end
  
  def index
    
  end
  
end

