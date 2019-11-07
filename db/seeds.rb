# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'open-uri'

puts 'Cleaning database...'
Ingredient.destroy_all
Cocktail.destroy_all


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ing_serialized = open(url).read
ing = JSON.parse(ing_serialized)


ing['drinks'].each do |item|
  ingredient = Ingredient.new({ name: item['strIngredient1'] })
  ingredient.save!
end




Cocktail.create!(name: "Gin Tonic")
Cocktail.create!(name: "Teléa Sunrise")
Cocktail.create!(name: "TGV")
Cocktail.create!(name: "Alejito")
Cocktail.create!(name: "Moscow Mule")
Cocktail.create!(name: "Marina Mule")
