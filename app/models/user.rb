class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :encryptable, :confirmable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  
  has_many :tweets
  has_many :relationships, :foreign_key => "follower_id"
  has_many :reverse_relationships, :foreign_key => "followed_id",
                                   :class_name => "Relationship"
  has_many :following, :through => :relationships, :source => :followed
  has_many :followers, :through => :reverse_relationships, :source => :follower
  
  def follow!(followed)
    relationships.create!(:followed_id => followed.id)
  end
  
  def unfollow!(followed)
    relationships.find_by_followed_id(followed).destroy
  end
  
  def following?(followed)
    relationships.find_by_followed_id(followed)
  end
  
end
