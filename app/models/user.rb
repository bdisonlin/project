class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes

  has_secure_password validations: false

	# 驗證1: name  不能爲空
  validates :name, presence: true

  # 驗證2: name 必需唯一
  validates :name, uniqueness: true

  # 驗證3: password  不能爲空
  validates :password, presence: true

end