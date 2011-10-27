class Tweet < ActiveRecord::Base
  
  belongs_to :user
  
  validates :content, :presence => true,
                      :length =>  {:maximum => 140}
  validates :user,    :presence => true
  
  class << self
    def per_page
      10
    end
  end
  
  default_scope :order => 'tweets.created_at DESC'
  
end
