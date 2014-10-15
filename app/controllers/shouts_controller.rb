class ShoutsController < ApplicationController
  before_action :require_login
  def index
    @image_subject = ImageSubject.new
    @text_subject = TextSubject.new
    @timeline = current_user.timeline
    @users_i_follow = current_user.followed_users
    @users_i_do_not_follow = User.where.not(id: current_user.followed_user_ids)
    @following_relationship = FollowingRelationship.new
  end
end


