class RelationshipsController < ApplicationController
  
  def create
    user = User.find_by_id params[:id]
    current_user.follow!(user)
    redirect_to user_path(user),
                :flash => { :notice => "You have successfully followed user #{user.email}" }
  end
  
  def destroy
    user = User.find_by_id params[:id]
    current_user.unfollow!(user)
    redirect_to user_path(user),
                :flash => { :notice => "You have successfully unfollowed user #{user.email}" }
  end
  
end

