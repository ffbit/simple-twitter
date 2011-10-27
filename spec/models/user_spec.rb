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
  
  describe "important attributes and methods" do
    before(:each) do
      @user = User.create!(@attr)
    end
    
    it "should have an email attribute" do
      @user.should respond_to(:email)
    end
    
    it "should have a password attribute" do
      @user.should respond_to(:password)
    end
    
    it "should have a password confirmation attribute" do
      @user.should respond_to(:password_confirmation)
    end
    
    it "should have an encrypted password attribute" do
      @user.should respond_to(:encrypted_password)
    end
    
    it "should set the encrypted password attribute" do
      @user.encrypted_password.should_not be_blank
    end
    
    it "should have a password salt attribute" do
      @user.should respond_to(:password_salt)
    end
    
    it "should set the password salt attribute" do
      @user.password_salt.should_not be_blank
    end
    
    it "should have a confirmation token attribute" do
      @user.should respond_to(:confirmation_token)
    end
    
    it "should set the confirmation token attribute" do
      @user.confirmation_token.should_not be_blank
    end
    
    it "should have a confirmed? method" do
      @user.should respond_to(:confirmed?)
    end
    
    it "should require confirmation" do
      @user.should_not be_confirmed
    end
    
    it "should have a tweets attribute" do
      @user.should respond_to(:tweets)
    end
    
    it "should have a relationships attribute" do
      @user.should respond_to(:relationships)
    end
    
    it "should have a following attribute" do
      @user.should respond_to(:following)
    end
  end
  
  describe "email attribute and it's validation" do
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
      Factory(:user, :email => @attr[:email])
      user_with_duplicated_email = User.new(@attr)
      user_with_duplicated_email.should_not be_valid
    end
  end
  
  describe "passwords attributes and their validation" do
    it "should require a password" do
      user = User.new(@attr.merge(:password => ""))
      user.should_not be_valid
    end
    
    it "should require a password confirmation" do
      user = User.new(@attr.merge(:password_confirmation => ""))
      user.should_not be_valid
    end
    
    it "should require matching password confirmation" do
      user = User.new(@attr.merge(:password_confirmation => "mismatch"))
    end
    
    it "should reject a short password" do
      short_password = "a" * 5
      user = User.new(@attr.merge(:password => short_password, 
                                  :password_confirmation => short_password))
      user.should_not be_valid
    end
  end
  
  describe "follow" do
    before(:each) do
      @follower = Factory(:user)
      @followed = Factory(:user)
    end
    
    it "should have follow! method" do
      @follower.should respond_to(:follow!)
    end
    
    it "should have following method" do
      @follower.should respond_to(:following)
    end
    
    it "should have the right followed" do
      @follower.follow!(@followed)
      @follower.following.should include(@followed)
    end
    
    it "should have unfollow! method" do
      @follower.should respond_to(:unfollow!)
    end
    
    it "should not have the right followed" do
      @follower.follow!(@followed)
      @follower.unfollow!(@followed)
      @follower.following.should_not include(@followed)
    end
    
    it "should have a followers method" do
      @follower.should respond_to(:followers)
    end
    
    it "should have the right follower" do
      @follower.follow!(@followed)
      @followed.followers.should include(@follower)
    end
  end
  
end

