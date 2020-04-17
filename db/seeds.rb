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

recipe1 = Recipe.create(name: "Chicken Pizza", category: array[0], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/lh27mz" ,description: "Start by using your cup of flour and adding a teaspoon of water and one egg. Crack the egg into the flour, and mix together thuroughly. Once you've made dough, kneed the dough out to a disk shape and make your crust. During this time, you can cut your chicken into thin strips, then bake them on an oven sheet at 350 degrees for 10 minutes. Add you pizza sauce to your crust, sprinkle some cheese, and add the baked chicken strips. Put it all in the oven for 15 minutes and enjoy!")
recipe2 = Recipe.create(name: "Spaghetti", category: array[0], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/wj27mz" , description: "Combine ground beef, onion, garlic, and green pepper in a large saucepan. Cook and stir until meat is brown and vegetables are tender. Drain grease.Stir diced tomatoes, tomato sauce, and tomato paste into the pan. Season with oregano, basil, salt, and pepper. Simmer spaghetti sauce for 1 hour, stirring occasionally.")
recipe3 = Recipe.create(name: "Chicken Tacos", category: array[1], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/hm27mz"  , description: "Place chicken breasts into a saucepan and pour in enough water to cover. Place over medium heat, bring to a boil, and simmer until chicken meat is no longer pink, 10 to 12 minutes. Transfer chicken breasts to a bowl, allow to cool, and shred the chicken meat with 2 forks. Heat vegetable oil in a small non-stick saucepan over medium heat, and cook and stir onion until translucent, 2 to 3 minutes. Mix in the shredded chicken, cumin, chili powder, and tomato sauce; bring to a boil. Reduce heat to low and simmer until chicken is hot and the flavors have blended, about 3 minutes.") 
recipe4 = Recipe.create(name: "Chicken Quesadilla", category: array[1], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/ro27mz" , description: "In a small bowl, combine tomatoes, onion, lime juice, cilantro, jalapeno, salt, and pepper. Set pico de gallo aside. In a large skillet, heat 1 tablespoon olive oil. Add chicken and saute until cooked through and juices run clear. Remove chicken from skillet and set aside. Put the remaining 1 tablespoon of olive oil in the hot skillet and saute the sliced onion and green pepper until tender. Stir in the minced garlic and saute until the aroma is strong. Mix in half of the pico de gallo and chicken breast meat. Set aside; keep warm.	In a heavy skillet, heat one flour tortilla. Spread 1/4 cup shredded cheese on the tortilla and top with 1/2 the chicken mixture. Sprinkle another 1/4 cup cheese over the chicken and top with another tortilla. When bottom tortilla is lightly brown and cheese has started to melt, flip quesadilla and cook on the opposite side. Remove quesadilla from skillet and cut into quarters. Repeat with remaining ingredients. Serve quesadillas with sour cream and remaining pico de gallo.")
recipe5 = Recipe.create(name: "Croissants", category: array[2], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/6p27mz" , description: "Combine yeast, warm water, and 1 teaspoon sugar. Allow to stand until creamy and frothy. Measure flour into a mixing bowl. Dissolve 2 teaspoons sugar and salt in warm milk. Blend into flour along with yeast and oil. Mix well; knead until smooth. Cover, and let rise until over triple in volume, about 3 hours. Deflate gently, and let rise again until doubled, about another 3 hours. Deflate and chill 20 minutes. Massage butter until pliable, but not soft and oily. Pat dough into a 14x8-inch rectangle. Smear butter over top two thirds, leaving 1/4-inch margin all around. Fold unbuttered third over middle third, and buttered top third down over that. Turn 90 degrees, so that folds are to left and right. Roll out to a 14x6-inch rectangle. Fold in three again. Sprinkle lightly with flour, and put dough in a plastic bag. Refrigerate 2 hours. Unwrap, sprinkle with flour, and deflate gently. Roll to a 14x6-inch rectangle, and fold again. Turn 90 degrees, and repeat. Wrap, and chill 2 hours. To shape, roll dough out to a 20x5-inch rectangle. Cut in half crosswise, and chill half while shaping the other half. Roll out to a 15 x 5 inch rectangle. Cut into three 5 x 5 inch squares. Cut each square in half diagonally. Roll each triangle lightly to elongate the point, and make it 7 inches long. Grab the other 2 points, and stretch them out slightly as you roll it up. Place on a baking sheet, curving slightly. Let shaped croissants rise until puffy and light. In a small bowl, beat together egg and 1 tablespoon water. Glaze croissants with egg wash. Bake in a preheated 475 degrees F (245 degrees C) oven for 12 to 15 minutes.")
recipe6 = Recipe.create(name: "Baguette", category: array[2], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/cs27mz" , description: "Place 1 cup water, bread flour, sugar, salt and yeast into bread machine pan in the order recommended by manufacturer. Select Dough cycle, and press Start. When the cycle has completed, place dough in a greased bowl, turning to coat all sides. Cover, and let rise in a warm place for about 30 minutes, or until doubled in bulk. Dough is ready if indentation remains when touched. Punch down dough. On a lightly floured surface, roll into a 16x12 inch rectangle. Cut dough in half, creating two 8x12 inch rectangles. Roll up each half of dough tightly, beginning at 12 inch side, pounding out any air bubbles as you go. Roll gently back and forth to taper end. Place 3 inches apart on a greased cookie sheet. Make deep diagonal slashes across loaves every 2 inches, or make one lengthwise slash on each loaf. Cover, and let rise in a warm place for 30 to 40 minutes, or until doubled in bulk. Preheat oven to 375 degrees F (190 degrees C). Mix egg yolk with 1 tablespoon water; brush over tops of loaves. Bake for 20 to 25 minutes in the preheated oven, or until golden brown")
recipe7 = Recipe.create(name: "Pulled Pork", category: array[3], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/iv27mz"  , description: "Set the slow cooker to High. Place the pork in the slow cooker. Season top of pork with salt, pepper, onion powder, and garlic powder. Pour beer into the bottom of the slow cooker and place the lid on the slow cooker crock. Cook pork on High for 1 hour. Reduce slow cooker heat to Low and cook for at least 8 hours or overnight. Remove pork from the slow cooker and shred with two forks. Discard juices and rinse out slow cooker crock. Return shredded pork to slow cooker and stir barbecue sauce into pork. Cook on Medium for 1 hour")
recipe8 = Recipe.create(name: "Chicken Fried Steak", category: array[3], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/my27mz", description: "Pound the steaks to about 1/4-inch thickness. Place 2 cups of flour in a shallow bowl. Stir together the baking powder, baking soda, pepper, and salt in a separate shallow bowl; stir in the buttermilk, egg, Tabasco Sauce, and garlic. Dredge each steak first in the flour, then in the batter, and again in the flour. Pat the flour onto the surface of each steak so they are completely coated with dry flour. Heat the shortening in a deep cast-iron skillet to 325 degrees F (165 degrees C). Fry the steaks until evenly golden brown, 3 to 5 minutes per side. Place fried steaks on a plate with paper towels to drain. Drain the fat from the skillet, reserving 1/4 cup of the liquid and as much of the solid remnants as possible. Return the skillet to medium-low heat with the reserved oil. Whisk the remaining flour into the oil. Scrape the bottom of the pan with a spatula to release solids into the gravy. Stir in the milk, raise the heat to medium, and bring the gravy to a simmer, cook until thick, 6 to 7 minutes. Season with kosher salt and pepper. Spoon the gravy over the steaks to serve") 
recipe9 = Recipe.create(name: "Buttermilk Waffles", category: array[4], user_id: User.all.sample.id, recipe_url:"http://tiny.cc/p127mz" , description: "Preheat a waffle iron according to manufacturer's instructions. Preheat oven to 275 degrees F (135 degrees C). Set a wire rack on a baking sheet and place in the oven. Whisk flour, sugar, baking soda, and salt together in a bowl. Whisk buttermilk, egg, and oil together in a large bowl. Stir flour mixture into buttermilk mixture just until batter is combined. Pour batter into preheated waffle iron, leaving about 1/2-inch border; close iron and cook according to manufacturer's instructions, 3 to 5 minutes. Transfer cooked waffles to the rack in the oven. Continue cooking waffles with remaining batter.")
recipe10 = Recipe.create(name: "Hamburgers", category: array[5], user_id: User.all.sample.id ,recipe_url:"http://tiny.cc/w227mz" , description: "Preheat a grill for high heat. In a large bowl, mix together the ground beef, onion, cheese, soy sauce, Worcestershire sauce, egg, onion soup mix, garlic, garlic powder, parsley, basil, oregano, rosemary, salt, and pepper. Form into 4 patties. Grill patties for 5 minutes per side on the hot grill, or until well done. Serve on buns with your favorite condiments.")
recipe11 = Recipe.create(name: "Orange Chicken", category: array[5], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/j527mz" , description: "Saute chicken in a large skillet until lightly browned, about 7 to 10 minutes. Remove from skillet and set aside. In a medium bowl combine the flour, broth, juice, marmalade and pepper. Mix together. Heat mixture in a medium saucepan over medium low heat, stirring constantly, until bubbly. Add chicken and cook over low heat for 4 minutes.")
recipe12 = Recipe.create(name: "Mapo Tofu", category: array[6], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/r327mz" , description: "Heat vegetable oil in a saucepan over medium-high heat. Add onion and garlic; cook and stir until browned, 5 to 7 minutes. Mix pork and egg together in a bowl. Stir mixture into the saucepan. Saute until starting to turn color, 3 to 5 minutes. Stir chile bean sauce, black bean sauce, and chile oil into the pork mixture. Cover, reduce heat to medium-low, and simmer until pork is browned, 3 to 5 minutes. Add tofu; simmer until flavors are well blended, about 3 minutes. Season with salt and pepper and top with green onions.")
recipe13 = Recipe.create(name: "Katsu Curry", category: array[7], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/b727mz" , description: "Heat ghee in a large skillet over medium heat and cook and stir onion until translucent, about 5 minutes. Stir in garlic; cook and stir just until fragrant, about 1 minute. Stir cumin, 1 teaspoon salt, ginger, cayenne pepper, cinnamon, and turmeric into the onion mixture; fry until fragrant, about 2 minutes. Stir tomato sauce into the onion and spice mixture, bring to a boil, and reduce heat to low. Simmer sauce for 10 minutes, then mix in cream, paprika, and 1 tablespoon sugar. Bring sauce back to a simmer and cook, stirring often, until sauce is thickened, 10 to 15 minutes. Heat vegetable oil in a separate skillet over medium heat. Stir chicken into the hot oil, sprinkle with curry powder, and sear chicken until lightly browned but still pink inside, about 3 minutes; stir often. Transfer chicken and any pan juices into the sauce. Simmer chicken in sauce until no longer pink, about 30 minutes; adjust salt and sugar to taste.")
recipe14 = Recipe.create(name: "Teriyaki chicken", category: array[7], user_id: User.all.sample.id, recipe_url: "http://tiny.cc/7827mz", description: "Rinse chicken halves, and pat dry with paper towels. Place chicken cut side down in a 9x13 inch baking dish. In a medium mixing bowl, combine sugar, soy sauce, grated ginger and garlic. Mix well, and pour mixture over chicken. Cover and refrigerate for at least 3 hours. Preheat oven to 350 degrees F (175 degrees C). Bake chicken uncovered in the preheated oven for 1 hour, basting frequently. Test for doneness, making sure there is no pink left in the meat. Let cool slightly, then cut into smaller pieces to serve.")



ingredient1 = Ingredient.create(name: "Chicken", calories: 150)
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
