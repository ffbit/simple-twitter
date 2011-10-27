class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @user = User.find_by_id(params[:id]) || current_user
    @tweet = Tweet.new
    page_of_tweets(params)
  end
  
  def index
    @users = User.all
  end
  
end

