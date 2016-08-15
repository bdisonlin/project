class Category < ActiveRecord::Base
  has_many :CatePostConnections
  has_many :posts, through: :CatePostConnections

  validates :title, presence: true
end