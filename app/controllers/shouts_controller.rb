class ShoutsController < ApplicationController
  before_action :require_login
  def index
    @image_subject = ImageSubject.new
    @text_subject = TextSubject.new
    @timeline = current_user.timeline.page(params[:page]).per(3)
    @following_relationship = FollowingRelationship.new
  end
end


