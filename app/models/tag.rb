class Tag < ActiveRecord::Base
  #has_and_belongs_to_many :blogs
    has_many :blog_tags
    has_many :blogs, :through => :blog_tags

end
