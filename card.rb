class Card < ApplicationRecord
  validates :original_text, :translated_text, presence: true #тут еще будет equal 
  validates :original_text, uniqueness: {message: "Word already exist"}
  validates :translated_text, uniqueness: {message: "Word already exist"}

before_create :set_review_date

def set_review_date
  self.review_date = 3.days.since
end
end





