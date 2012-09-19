class Post < ActiveRecord::Base
  attr_accessible :content, :name, :tags, :title
end
