# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://www.memrise.com/course/920/5000-german-words-top-87/"))
row = doc.css('div.span9 .levels.clearfix a.level.clearfix[href*="/course/920/5000-german-words-top-87"]').each do |row|
  original_text = row.css('div.central.column .things.clearfix .things.text-text .col_a.col.text').text
  translated_text = row.css('div.central.column .things.clearfix .things.text-text .col_b.col.text').text
  puts "#{original_text}\t#{translated_text}"

  Card.create(original_text: original_text, translated_text: translated_text)
end 
