require 'spec_helper'

describe UsersController do
  include Devise::TestHelpers
  render_views
  
  let(:user) { Factory :user }
  
  describe "GET 'index'" do
    it "should redirect non-signed-in users to sing in page" do
      get :index
      response.should redirect_to(new_user_session_path)
    end
  end

  describe "GET 'show'" do
    it "should redirect non-signed-in users to sing in page" do
      get :show
      response.should redirect_to(new_user_session_path)
    end
    
    it "should redirect non-signed-in users to sing in page" do
      get :show, :id => user.id
      response.should redirect_to(new_user_session_path)
    end
  end

end
