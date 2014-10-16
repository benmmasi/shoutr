class TextSubject < ActiveRecord::Base
  validates :body, presence: true

  has_one :shout, as: :subject

  def body=(new_body)
    self[:body] = new_body.upcase
  end
end
