class Tweet < ApplicationRecord
  belongs_to :user
  validates :tweets, presence: true
end
