class User < ApplicationRecord


  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :favorites_posts, through: :favorites, source: :post
end
