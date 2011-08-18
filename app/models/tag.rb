class Tag < ActiveRecord::Base

  has_many :relationships, :dependent => :destroy
  has_many :posts, :through => :relationships

end
