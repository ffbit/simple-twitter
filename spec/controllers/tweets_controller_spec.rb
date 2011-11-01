require 'spec_helper'

describe TweetsController do
  include Devise::TestHelpers
  render_views
  
  let(:tweet) { Factory :tweet }
  
  describe "POST 'create'" do
    it "should redirect non-signed-in users to sing in page" do
      post 'create', :content => "Good day!", :user_id => tweet.user_id
      response.should redirect_to(new_user_session_path)
    end
  end
  
  describe "GET 'more'" do
    it "should redirect non-signed-in users to sing in page" do
      get 'more', :page => 1, :user_id => tweet.user_id
      response.should redirect_to(new_user_session_path)
    end
  end
  
  describe "DELETE 'destroy'" do
    it "should redirect non-signed-in users to sing in page" do
      delete :destroy, :id => tweet.id
      response.should redirect_to(new_user_session_path)
    end
  end
  
end
