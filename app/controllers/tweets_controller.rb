class TweetsController < ApplicationController
  
  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.user = current_user
    @tweet.save
  end
  
  def more
    @page = params[:page].to_i
    limit = Tweet.per_page
    offset = (@page - 1) * limit
    @tweets = Tweet.find_all_by_user_id(current_user.id,
                                        :offset => offset, :limit => limit)
    @page = @page + 1 if @tweets.any?
  end
  
end

