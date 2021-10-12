class Post < ApplicationRecord

  belongs_to :user
  belongs_to :tourist_spot
  has_many :post_comments, dependent: :destroy
end
