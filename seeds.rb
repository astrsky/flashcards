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

doc = Nokogiri::HTML(open("http://wordsteps.com/vocabulary/words/46729/")
cards_list = doc.xpath()


=begin cards_list = [
  ['a little bit', 'немного']
  ['abandon', 'покидать, оставлять, отказываться']
  ['abbreviation', 'сокращение']
  ['aberration', 'отклонение']
  ['abhor', 'ненавидеть, не выносить']
  ['abide', 'оставаться верным, придерживаться']
 
]

cards_list.each do |original_text, translated_text|
  Cards.create( original_text: original_text, translated_text: translated_text)
end 
=end

