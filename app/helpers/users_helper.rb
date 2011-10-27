module UsersHelper
  
  def gravatar_for(user, options = { :size => 64})
    gravatar_image_tag user.email, :alt => user.email,
                                   :id => "avatar",
                                   :class => 'avatar',
                                   :gravatar => options
  end
  
end

