class UsersController < ApplicationController
  
  def show
    @user = User.find_by_id(params[:id])
  end
  
  def home
    @user = current_user
    @tweet = Tweet.new
    page_of_tweets(params)
  end
  
  def index
    @users = User.all
  end
  
end

