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

doc = Nokogiri::HTML(open("http://wordsteps.com/vocabulary/words/46729/"))
row = doc.css('#WordsTable tbody tr').each do |row|
  original_text = row.css('td.static.word').text
  translated_text = row.css('td.static.trans').text

  Card.create(original_text: original_text, translated_text: translated_text)
end 
