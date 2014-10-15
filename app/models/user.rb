class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :followed_user_relationships,
    foreign_key: :follower_id,
    class_name: "FollowingRelationship"
  has_many :followed_users, through: :followed_user_relationships
 
  has_many :follower_relationships,
    foreign_key: :followed_user_id,
    class_name: :"FollowingRelationship"
  has_many :followers, through: :follower_relationships

  has_many :shouts

  def following?(other_user)
    followed_user_ids.include?(other_user.id)
  end

  def unfollow(user_to_unfollow)
    followed_users.destroy(user_to_unfollow)
  end

  def timeline
    Shout.where(user_id: followed_user_ids + [id])
      .order(created_at: :desc).limit(20)
  end
end
