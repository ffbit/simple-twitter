require 'spec_helper'

describe Tweet do
  
  before(:each) do
    @attr = {
      :content => "Some content",
      :user => Factory(:user)
    }
  end
  
  it "should create a new instance given attributes" do
    Tweet.create!(@attr)
  end
  
  describe "important attributes" do
    before(:each) do
      @tweet = Tweet.new(@attr)
    end
    
    it "should have a content attribute" do
      @tweet.should respond_to(:content)
    end
    
    it "should have a user attribute" do
      @tweet.should respond_to(:user)
    end
  end
  
  describe "content validation" do
    it "should accept valid content" do
      content = "a" * 50
      tweet = Tweet.new(@attr.merge(:content => content))
      tweet.should be_valid
    end
    
    it "should require content" do
      tweet = Tweet.new(@attr.merge(:content => ""))
      tweet.should_not be_valid
    end
    
    it "should reject blank content" do
      content = " " * 50
      tweet = Tweet.new(@attr.merge(:content => content))
      tweet.should_not be_valid
    end
    
    it "should reject too long content" do
      too_long_content = "a" * 141
      tweet = Tweet.new(@attr.merge(:content => too_long_content))
      tweet.should_not be_valid
    end
  end
  
  describe "user validation" do
    it "should accept a valid user" do
      tweet = Tweet.new(@attr.merge(:user => Factory(:user)))
      tweet.should be_valid
    end
    
    it "should require a user" do
      tweet = Tweet.new(@attr.merge(:user => nil))
      tweet.should_not be_valid
    end
  end
  
end
