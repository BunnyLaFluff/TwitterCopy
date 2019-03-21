class Tweet < ApplicationRecord
  belongs_to :user
  validates :message, presence: true
  validates :message, length: {maximum: 140,
too_long: "Sorry, too long - keep to 140 characters"}
end
