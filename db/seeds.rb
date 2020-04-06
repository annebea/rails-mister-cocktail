# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")




file = URI.open('https://images.unsplash.com/photo-1415065063214-b36374daf153?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cocktail = Cocktail.new(name: 'Baby Guiness', description: 'Delicious!! For coffee lovers (Does not contain guiness)')
cocktail.photo.attach(io: file, filename: 'babyguiness.jpg', content_type: 'image/jpg')
