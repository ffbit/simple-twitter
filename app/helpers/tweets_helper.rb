module TweetsHelper
  
  def page_of_tweets(params)
    params[:page] = 0 if params[:page].nil?
    @page = params[:page].to_i
    limit = Tweet.per_page
    offset = @page * limit
    
    # Brute force!!!
    params[:user_id] = current_user.id if params[:user_id].nil?
    user = User.find_by_id(params[:user_id])
    ids = [current_user.id]
    user.following.each do |followed|
      ids << followed.id
    end
    
    @tweets = Tweet.find_all_by_user_id(ids, :offset => offset, :limit => limit)
    
    if @tweets.last == Tweet.find_last_by_user_id(ids)
      @page = -1
    end
      @page = @page + 1
  end
  
end
