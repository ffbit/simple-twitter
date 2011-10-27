class SessionsController < Devise::SessionsController
  
  def new
    if user_signed_in?
      redirect_to current_user
    else
      super
    end
  end

end

