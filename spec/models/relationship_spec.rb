require 'spec_helper'

describe Relationship do
  before(:each) do
    @follower = Factory(:user)
    @followed = Factory(:user)
    @relationship = @follower.relationships.build(:followed_id => @followed.id)
  end
  
  it "should create a new instance given valid attributes" do
    @relationship.save!
  end
  
  describe "important attributes" do
    it "should have a follower attribute" do
      @relationship.should respond_to(:follower)
    end
    
    it "should have the right follower user" do
      @relationship.follower.should == @follower
    end
    
    it "should have a followed attribute" do
      @relationship.should respond_to(:followed)
    end
    
    it "should have the right followed user" do
      @relationship.followed.should == @followed
    end
  end
  
  describe "validation" do
    it "should require the followed_id attribute" do
      @relationship.followed = nil
      @relationship.should_not be_valid
    end
      
    it "should require the follower_id attribute" do
      @relationship.follower = nil
      @relationship.should_not be_valid
    end
  end
  
end
