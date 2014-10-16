class TextSubject < ActiveRecord::Base
  validates :body, presence: true

  has_one :shout, as: :subject
end
