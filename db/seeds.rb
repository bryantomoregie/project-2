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

# def call_api
#     #url = "https://api.edamam.com/search?q=chicken&app_id=${b1b571e0}&app_key=${b112c45f9c0cf96e59683b042fd6e730}&from=0&to=3&calories=591-722&health=alcohol-free"
#     response = RestClient.get"https://api.edamam.com/search?q=chicken&app_id=${b1b571e0}&app_key=${b112c45f9c0cf96e59683b042fd6e730}&from=0&to=3&calories=591-722&health=alcohol-free"
#     json = JSON.parse response
# end

# call_api
array = ["Breakfast", "Lunch", "Dinner"]

10.times do
User.create(name: Faker::Name.name, password: Faker::Internet.password, user_name: Faker::Internet.user_name(specifier: 5..8), img_url: Faker::Avatar.image)
end


recipe1 = Recipe.create(name: "Chicken Pizza", category: array[0], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/lh27mz" ,description: "")
recipe2 = Recipe.create(name: "Spaghetti", category: array[0], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/wj27mz" , description: "Magnifico! This Italian classic never goes out of style. Follow this simple recipe to impress your friend with an excellent version of a fan favorite")
recipe3 = Recipe.create(name: "Chicken Tacos", category: array[1], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/hm27mz" , description: "") 
recipe4 = Recipe.create(name: "Chicken Quesadilla", category: array[1], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/ro27mz" , description: "")
recipe5 = Recipe.create(name: "Croissants", category: array[2], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/6p27mz" , description: "")
recipe6 = Recipe.create(name: "Baguette", category: array[2], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/cs27mz" , description: "")
recipe7 = Recipe.create(name: "Pulled Pork", category: array[3], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/iv27mz" , description: "")
recipe8 = Recipe.create(name: "Chicken Fried Steak", category: array[3], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/my27mz"  , description: "") 
recipe9 = Recipe.create(name: "Buttermilk Waffles", category: array[4], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/p127mz"  , description: "")
recipe10 = Recipe.create(name: "Hamburgers", category: array[5], user_id: User.all.sample.id ,recipe_url:"http://tiny.cc/w227mz" , description: "")
recipe11 = Recipe.create(name: "Orange Chicken", category: array[5], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/j527mz" , description: "")
recipe12 = Recipe.create(name: "Mapo Tofu", category: array[6], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/r327mz" , description: "")
recipe13 = Recipe.create(name: "Katsu Curry", category: array[7], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/b727mz" , description: "")
recipe14 = Recipe.create(name: "Teriyaki chicken", category: array[7], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/7827mz" , description: "")


ingredient1 = Ingredient.create(name: "Chicken", calories: 150 )
ingredient2 = Ingredient.create(name: "Flour", calories: 581)
ingredient3 = Ingredient.create(name: "Teriyaki Sauce", calories: 16)
ingredient4 = Ingredient.create(name: "Rice", calories: 216)
ingredient5 = Ingredient.create(name: "Butter", calories: 102)
ingredient6 = Ingredient.create(name: "Beef", calories: 213)
ingredient7 = Ingredient.create(name: "Cheese", calories: 113)
ingredient8 = Ingredient.create(name: "Tortilla", calories: 60)
ingredient9 = Ingredient.create(name: "Pork", calories: 203)
ingredient10 = Ingredient.create(name: "Tofu", calories: 94)
ingredient11 = Ingredient.create(name: "Pizza sauce", calories: 70)
ingredient12 = Ingredient.create(name: "Burger buns", calories: 236)
ingredient13 = Ingredient.create(name: "Maple syrup", calories: 52)
ingredient14 = Ingredient.create(name: "Sugar", calories: 9)
ingredient15 = Ingredient.create(name: "Spaghetti", calories: 221)
ingredient16 = Ingredient.create(name: "Bbq sauce", calories: 29)
ingredient17 = Ingredient.create(name: "Bellpepper", calories: 30)
ingredient18 = Ingredient.create(name: "Broccoli", calories: 50)
ingredient19 = Ingredient.create(name: "Eggs", calories: 78)
ingredient20 = Ingredient.create(name: "Milk", calories: 80)
ingredient21 = Ingredient.create(name: "Orange juice", calories: 60)


amount1 = Amount.create(ingredient_id: ingredient1.id, recipe_id: recipe1.id, measurement: "200 grams")
amount2 = Amount.create(ingredient_id: ingredient2.id, recipe_id: recipe1.id, measurement: "1 cup")
amount3 = Amount.create(ingredient_id: ingredient7.id, recipe_id: recipe1.id, measurement: "1 cup")
amount4 = Amount.create(ingredient_id: ingredient11.id, recipe_id: recipe1.id, measurement: "1 cup")
amount5 = Amount.create(ingredient_id: ingredient11.id, recipe_id: recipe2.id, measurement: "1 cup")
amount6 = Amount.create(ingredient_id: ingredient15.id, recipe_id: recipe2.id, measurement: "1 packet")
amount7 = Amount.create(ingredient_id: ingredient5.id, recipe_id: recipe2.id, measurement: "1/2 stick")
amount8 = Amount.create(ingredient_id: ingredient7.id, recipe_id: recipe3.id, measurement: ".5 cup")
amount9 = Amount.create(ingredient_id: ingredient8.id, recipe_id: recipe3.id, measurement: "1 pack")
amount10 = Amount.create(ingredient_id: ingredient17.id, recipe_id: recipe3.id, measurement: "1")
amount11 = Amount.create(ingredient_id: ingredient1.id, recipe_id: recipe3.id, measurement: "200 grams")
amount12 = Amount.create(ingredient_id: ingredient7.id, recipe_id: recipe4.id, measurement: ".5 cup")
amount13 = Amount.create(ingredient_id: ingredient8.id, recipe_id: recipe4.id, measurement: "1 pack")
amount14 = Amount.create(ingredient_id: ingredient17.id, recipe_id: recipe4.id, measurement: "1")
amount15 = Amount.create(ingredient_id: ingredient1.id, recipe_id: recipe4.id, measurement: "200 grams")
amount16 = Amount.create(ingredient_id: ingredient2.id, recipe_id: recipe5.id, measurement: "4 cups")
amount17 = Amount.create(ingredient_id: ingredient5.id, recipe_id: recipe5.id, measurement: "2 sticks")
amount18 = Amount.create(ingredient_id: ingredient2.id, recipe_id: recipe6.id, measurement: "4 cups")
amount19 = Amount.create(ingredient_id: ingredient5.id, recipe_id: recipe6.id, measurement: "2 sticks")
amount20 = Amount.create(ingredient_id: ingredient9.id, recipe_id: recipe7.id, measurement: "100 grams")
amount21 = Amount.create(ingredient_id: ingredient16.id, recipe_id: recipe7.id, measurement: ".5 cup")
amount22 = Amount.create(ingredient_id: ingredient1.id, recipe_id: recipe8.id, measurement: " 6 pcs")
amount23 = Amount.create(ingredient_id: ingredient2.id, recipe_id: recipe8.id, measurement: "2 cups")
amount24 = Amount.create(ingredient_id: ingredient5.id, recipe_id: recipe8.id, measurement: "1 stick")
amount25 = Amount.create(ingredient_id: ingredient5.id, recipe_id: recipe9.id, measurement: "2 sticks")
amount26 = Amount.create(ingredient_id: ingredient2.id, recipe_id: recipe9.id, measurement: "3 cups")
amount27 = Amount.create(ingredient_id: ingredient13.id, recipe_id: recipe9.id, measurement: "Up to you!")
amount28 = Amount.create(ingredient_id: ingredient19.id, recipe_id: recipe9.id, measurement: "2")
amount29 = Amount.create(ingredient_id: ingredient20.id, recipe_id: recipe9.id, measurement: "2 cups")
amount30 = Amount.create(ingredient_id: ingredient6.id, recipe_id: recipe10.id, measurement: "100 grams")
amount31 = Amount.create(ingredient_id: ingredient12.id, recipe_id: recipe10.id, measurement: "1 pack")
amount32 = Amount.create(ingredient_id: ingredient7.id, recipe_id: recipe10.id, measurement: "1 pack")
amount33 = Amount.create(ingredient_id: ingredient1.id, recipe_id: recipe11.id, measurement: "200 grams")
amount34 = Amount.create(ingredient_id: ingredient2.id, recipe_id: recipe11.id, measurement: "2 cups!")
amount35 = Amount.create(ingredient_id: ingredient14.id, recipe_id: recipe11.id, measurement: "3 tablespoons")
amount36 = Amount.create(ingredient_id: ingredient21.id, recipe_id: recipe11.id, measurement: "3 tablespoons")
amount37 = Amount.create(ingredient_id: ingredient10.id, recipe_id: recipe12.id, measurement: "2 packs")
amount38 = Amount.create(ingredient_id: ingredient17.id, recipe_id: recipe12.id, measurement: "1")
amount39 = Amount.create(ingredient_id: ingredient18.id, recipe_id: recipe13.id, measurement: "2")
amount40 = Amount.create(ingredient_id: ingredient1.id, recipe_id: recipe13.id, measurement: "300 grams")
amount41 = Amount.create(ingredient_id: ingredient2.id, recipe_id: recipe13.id, measurement: "1 cup")
amount42 = Amount.create(ingredient_id: ingredient5.id, recipe_id: recipe13.id, measurement: "1 stick")
amount43 = Amount.create(ingredient_id: ingredient4.id, recipe_id: recipe13.id, measurement: "2 cups")
amount44 = Amount.create(ingredient_id: ingredient1.id, recipe_id: recipe14.id, measurement: "200 grams")
amount45 = Amount.create(ingredient_id: ingredient2.id, recipe_id: recipe14.id, measurement: "1 cups")
amount46 = Amount.create(ingredient_id: ingredient3.id, recipe_id: recipe14.id, measurement: "1 cup")
amount47 = Amount.create(ingredient_id: ingredient4.id, recipe_id: recipe14.id, measurement: "4 cups")


review1 = Review.create(author:"Lisa", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe1.id)
review2 = Review.create(author:"Monica", comments:"I love pizza! Thanks for sharing!", ratings: rand(1..10), recipe_id: recipe1.id)
review3 = Review.create(author:"Gordon Ramsey", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe2.id)
review4 = Review.create(author:"Lisa", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe2.id)
review5 = Review.create(author:"Raul", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe3.id)
review6 = Review.create(author:"Mishi", comments:"Great recipe! Will try it out", ratings: rand(1..10), recipe_id: recipe3.id)
review7 = Review.create(author:"Anika", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe4.id)
review8 = Review.create(author:"Lisa", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe4.id)
review8 = Review.create(author:"Ahmed", comments:"Awesome!", ratings: rand(1..10), recipe_id: recipe5.id)
review9 = Review.create(author:"Tas", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe5.id)
review10 = Review.create(author:"Lisa", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe6.id)
review11 = Review.create(author:"Josh", comments:"Amazing!", ratings: rand(1..10), recipe_id: recipe6.id)
review12 = Review.create(author:"Lisa", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe7.id)
review13 = Review.create(author:"Arturo", comments:"Delish!!", ratings: rand(1..10), recipe_id: recipe7.id)
review14 = Review.create(author:"Aiden", comments:"Making me Hungry!", ratings: rand(1..10), recipe_id: recipe8.id)
review15 = Review.create(author:"Faizah", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe8.id)
review16 = Review.create(author:"Faizah", comments:"I love waffles. Thanks for sharing!", ratings: rand(1..10), recipe_id: recipe9.id)
review17 = Review.create(author:"Daphne", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe10.id)
review18 = Review.create(author:"Dianna", comments:"This looks so good!", ratings: rand(1..10), recipe_id: recipe10.id)
review19 = Review.create(author:"Aiden", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe11.id)
review20 = Review.create(author:"Ruth", comments:"Looks so good, gotta try it out!", ratings: rand(1..10), recipe_id: recipe12.id)
review21 = Review.create(author:"Steven", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe12.id)
review22 = Review.create(author:"Sabiha", comments:"Thanks for sharing!", ratings: rand(1..10), recipe_id: recipe13.id)
review23 = Review.create(author:"Moon", comments:"Great recipe!", ratings: rand(1..10), recipe_id: recipe14.id)