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
  
end
