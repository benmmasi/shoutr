class FollowingRelationshipsController < ApplicationController
  def create
    user_to_follow = User.find_by(username: params[:user_id])
    current_user.followed_users << user_to_follow

    # following_relationship = FollowingRelationship.new(
    #   follower_id: current_user.id,
    #  followed_user_id: params[:user_id])
    #
    # following_relationship.save
 
    redirect_to :back
  end

  def destroy
    user_to_unfollow = User.find_by(username: params[:user_id])
    current_user.unfollow(user_to_unfollow)

    redirect_to :back
  end
end
