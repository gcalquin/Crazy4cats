class Publication < ApplicationRecord
  validates :content, presence: true


  belongs_to :user

  has_many :likes

  has_many :liking_users, :through => :likes, :source => :user

  def is_liked?(user)
    if self.liking_users.include?(user)
      true
    else
      false
    end
  end

  def remove_like(user)
    Like.where(user: user, publication: self).first.destroy
  end

  def add_like(user)
    Like.create(user: user, publication: self)
  end

end
