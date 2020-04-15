# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Review.destroy_all
Ingredient.destroy_all
Amount.destroy_all

array = ["italian", "greek", "french", "southern", "american", "chinese", "japanese"]

10.times do
User.create(name: Faker::Name.name, password: Faker::Internet.password, user_name: Faker::Internet.user_name(specifier: 5..8), img_url: Faker::Avatar.image)
end

10.times do 
Recipe.create(name: Faker::Food.dish, category: array.sample, description: Faker::Food.description, user_id: User.all.sample.id)
end 

10.times do 
Ingredient.create(name: Faker::Food.ingredient, calories: rand(1..150))
end

10.times do 
Review.create(author: Faker::Name.name, comments: Faker::Books::Dune.quote, ratings: rand(1..10), recipe_id: Recipe.all.sample.id)
end

10.times do 
Amount.create(ingredient_id: Ingredient.all.sample.id, recipe_id: Recipe.all.sample.id)
end

