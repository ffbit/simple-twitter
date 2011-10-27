class ApplicationController < ActionController::Base
  protect_from_forgery
  include TweetsHelper
  include UsersHelper
end
