class SearchesController < ApplicationController
  def show
    users = User.where("email ILIKE ?", "%#{params[:query]}%") 
    text_subjects = TextSubject.where("body ILIKE ?", "%#{params[:query]}%").map{|subject| subject.shout}
      image_subjects = ImageSubject.where("url ILIKE ?", "%#{params[:query]}%").map{|subject| subject.shout}

  @results = users + text_subjects + image_subjects
  end
end
