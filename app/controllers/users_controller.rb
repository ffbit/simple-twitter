class UsersController < ApplicationController
  
  def show
  end
  
  def home
    @tweet = Tweet.new
    @tweets = Tweet.find_all_by_user_id(current_user.id,
                                            :limit => Tweet.per_page)
    @next_page = 2 if Tweet.per_page < current_user.tweets.count
  end
  
end

