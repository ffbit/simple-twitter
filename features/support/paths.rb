def path_to(page_name)
  case page_name
  
  when /the home page/
    root_path
  
  when /the sign out page/
    '/signout'
  
  when /the sign up page/
    '/signup'
  
  # Add more page name => path mappings here
  
  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end
end
