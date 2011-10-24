require 'spec_helper'

describe User do
  
  before(:each) do
    @attr = {
      :email => "user@example.com",
      :password => "secret",
      :password_confirmation => "secret"
    }
  end
  
  it "should create a new instance given attributes" do
    User.create!(@attr)
  end
  
end
