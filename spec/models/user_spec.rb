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
  
  describe "email attribute and it's validation" do
    it "should have an email attribute" do
      user = User.new(@attr)
      user.should respond_to(:email)
    end
    
    it "should require an email address" do
      user = User.new(@attr.merge(:email => ""))
      user.should_not be_valid
    end
    
    it "should accept valid emails" do
      emails = %w[good@yandex.ru p.h.d@example.i.com log12@in.five.org]
      emails.each do |email|
        valid_email_user = User.new(@attr.merge(:email => email))
        valid_email_user.should be_valid
      end
    end
    
    it "should reject invalid emails" do
      emails = %w[good@yandex,ru p.h.d_example.i.com log12g{at}in.five.org]
      emails.each do |email|
        invalid_email_user = User.new(@attr.merge(:email => email))
        invalid_email_user.should_not be_valid
      end
    end
    
    it "should reject duplicated emails" do
      User.create!(@attr)
      user_with_duplicated_email = User.new(@attr)
      user_with_duplicated_email.should_not be_valid
    end
  end
  
end

