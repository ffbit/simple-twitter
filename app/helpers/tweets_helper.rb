module TweetsHelper
  
  def page_of_tweets(params)
    params[:page] = 1 if params[:page].nil?
    @page = params[:page].to_i
    limit = Tweet.per_page
    offset = (@page - 1) * limit
    @tweets = Tweet.find_all_by_user_id(current_user.id,
                                        :offset => offset, :limit => limit)
    @page = @page + 1 if @tweets.any?
  end
  
end
