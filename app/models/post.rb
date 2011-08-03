class Post < ActiveRecord::Base
  attr_accessible :content
  validates :content, :presence => true, :length => { :maximum => 250 }
  
  default_scope :order => 'posts.created_at DESC'
  
end
