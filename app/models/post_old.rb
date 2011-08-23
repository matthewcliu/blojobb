class Post < ActiveRecord::Base

  #attr_accessible :content, :tag_names
  validates :content, :presence => true, :length => { :maximum => 250 }
  
  has_many :relationships, :dependent => :destroy
  has_many :tags, :through => :relationships

  #Store :tag_names for life of the object - never dump in a database
  attr_accessor :tag_names

  #After save from form submission, call assign tags that creates tags related to the post
  after_save :assign_tags
  
  default_scope :order => 'posts.created_at DESC'
  
  def tag_names
    @tag_names || tags.map(&:name).join(' ')
  end
  
  def self.search(search)
    if search
      #Search content column for ?, which maps to the params coming from the search form
      find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
    else
      Post.all
    end
  end
  
  private
  
  def assign_tags
    if @tag_names
      #Regular expression detects spaces between tags
      self.tags = @tag_names.split(/\s+/).map do |tag|
        #Active record has a find_or_create method built in
        Tag.find_or_create_by_tag_value(tag)
      end
    end
  end
  
end
