class Tag < ActiveRecord::Base

  #validates :tag_names, :presence => true

  has_many :relationships, :dependent => :destroy
  has_many :posts, :through => :relationships

  def self.search_tags_and_return_posts(search)
    tags = where("tag_value = ?", "#{search}").includes(:posts)
    tags_posts = tags.collect{|tag| tag.posts }.flatten
  end

end

