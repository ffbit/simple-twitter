class UsersController < ApplicationController
  
  def show
  end
  
  def home
    @tweet = Tweet.new
  end
  
end

