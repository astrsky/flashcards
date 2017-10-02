class RegisterValidator < ActiveModel::Validator
	def validate(record)
		if (record.Original_text = ~/^[A-Z]/) && (record.Translated_Text = ~/^[а-я]/)
			record.erors[:base] << "Original and Translated Text not equal"
		end
	end
end

class Card < ApplicationRecord
	validates :original_text, :translated_Text, :review_date , presence: {message: "field cant be empty"}
	validates :original_text, uniqueness: {message: "Word already exist"}
	validates :translated_Text, uniqueness: {message: "Word already exist"}
validates_with RegisterValidator
end

before_create :set_review_date

def set_review_date
	self.review_date = 3.days.since
	end

