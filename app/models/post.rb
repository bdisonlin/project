class Post < ActiveRecord::Base
	include Supervotes

  belongs_to :user
	has_many :comments
	has_many :category_post_connections
	has_many :categories, through: :category_post_connections
	has_many :votes, as: :voteable
	
  
end