class Post < ApplicationRecord

  attachment :image

  belongs_to :user
  has_many :post_comments, dependent: :destroy

  def gooded_by?(user)
    goods.where(user_id: user_id).exists?
  end

end
