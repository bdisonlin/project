class Comment < ActiveRecord::Base
  #include Voteable
  belongs_to :user
  belongs_to :post

  validates :content, presence: true, length: {minimum: 5}

  has_many :votes, as: :voteable

end