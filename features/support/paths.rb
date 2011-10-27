def path_to(page_name, hash = {:confirmation_token => ''})
  case page_name
  
  when /the home page/
    root_path
  
  when /the sign out page/
    '/signout'
  
  when /the sign up page/
    '/signup'
  
  when /the confirmation page/
    "#{confirmation_path}?confirmation_token=#{hash[:confirmation_token]}"
  
  when /the sign in page/
    '/signin'
  
  when /the user's page/
    '/users/show'
  
  when /the who to follow page/
    users_path
  
  # Add more page name => path mappings here
  
  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end
end
