class Post < ActiveRecord::Base
	belongs_to :author 
	has_many :comments
	has_many :post_tags
	has_many :tags, :through => :post_tags #, :order => 'created_at desc'
end
