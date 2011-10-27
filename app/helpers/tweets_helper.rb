module TweetsHelper
  
  def page_of_tweets(params)
    params[:page] = 0 if params[:page].nil?
    params[:user_id] = current_user.id if params[:user_id].nil?
    @page = params[:page].to_i
    user_id = params[:user_id].to_i
    limit = Tweet.per_page
    offset = @page * limit
    @tweets = Tweet.find_all_by_user_id(user_id,
                                        :offset => offset, :limit => limit)
    if (@tweets.count + offset) == current_user.tweets.count
      @page = -1
    end
      @page = @page + 1
  end
  
end
