require 'spec_helper'

describe RelationshipsController do
  include Devise::TestHelpers
  render_views
  
  let(:relationship) { Factory :relationship }
  
  describe "PUT 'update'" do
    it "should redirect non-signed-in users to sing in page" do
      put :update, :id => relationship.followed_id
      response.should redirect_to(new_user_session_path)
    end
  end
  
  describe "DELETE 'destroy'" do
    it "should redirect non-signed-in users to sing in page" do
      delete :destroy, :id => relationship.followed_id
      response.should redirect_to(new_user_session_path)
    end
  end
end
