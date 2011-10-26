class UsersController < ApplicationController
  
  def show
  end
  
  def home
    @tweet = Tweet.new
    @top_tweets = Tweet.find_all_by_user_id(current_user.id,
                                            :limit => Tweet.per_page)
  end
  
end

