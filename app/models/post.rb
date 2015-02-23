class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  scope :most_recent, -> { order(created_at: :desc).limit(1).first }

end