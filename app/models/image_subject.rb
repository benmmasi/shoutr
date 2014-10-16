class ImageSubject < ActiveRecord::Base
  validates :url, presence: true

  has_one :shout, as: :subject
end
