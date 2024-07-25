//
//  Recipe.swift
//  RecipeRealm
//
//  Created by CDMStudent on 3/9/24.
//

import Foundation

struct Recipe {
    let name: String
    let recipeimage: String
    let time: String
    let course: String
    let cuisine: String
    let procedure: String
    let ingredients: String
}

let recipes = [
    Recipe(
        name: "Avocado Toast",
        recipeimage: "avocado_toast.jpg",
        time: "15 Minutes",
        course: "Breakfast",
        cuisine: "American",
        procedure: """
        Toast the bread until golden brown and crispy.
        Smash the ripe avocado in a bowl with a fork until smooth.
        Spread the avocado evenly on the toast.
        Top with sliced tomatoes and a poached or fried egg.
        Season with salt, pepper, and a sprinkle of red pepper flakes if desired.
        """,
        ingredients: "Bread, avocado, eggs, tomatoes"
    ),
    Recipe(
        name: "Pancakes",
        recipeimage: "pancakes.jpg",
        time: "30 Minutes",
        course: "Breakfast",
        cuisine: "American",
        procedure: """
        In a bowl, mix flour, milk, and eggs until smooth.
        Heat a lightly oiled griddle or frying pan over medium heat.
        Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.
        Cook until bubbles form on the surface, then flip and cook until golden brown.
        Serve hot with butter and syrup.
        """,
        ingredients: "Flour, milk, eggs, butter, syrup"
    ),
    Recipe(
        name: "Egg Muffins",
        recipeimage: "egg_muffins.jpg",
        time: "25 Minutes",
        course: "Breakfast",
        cuisine: "American",
        procedure: """
        Preheat oven to 350°F (175°C).
        In a bowl, whisk together eggs and diced vegetables.
        Pour the mixture into greased muffin cups, filling each cup 3/4 full.
        Bake in the preheated oven for 20-25 minutes, or until set.
        Allow to cool slightly before serving.
        """,
        ingredients: "Eggs, spinach, bell peppers, cheese"
    ),
    Recipe(
        name: "Dosa",
        recipeimage: "dosa.jpg",
        time: "45 Minutes",
        course: "Breakfast",
        cuisine: "Indian",
        procedure: """
        Soak rice and lentils separately for 4-6 hours.
        Blend into a smooth batter and ferment overnight.
        Spread batter thinly on a hot griddle to form a crepe.
        Add potato masala filling and fold the dosa.
        Serve hot with coconut chutney and sambar.
        """,
        ingredients: "Rice, lentils, potatoes, spices"
    ),
    Recipe(
        name: "Chilaquiles",
        recipeimage: "chilaquiles.jpg",
        time: "30 Minutes",
        course: "Breakfast",
        cuisine: "Mexican",
        procedure: """
        In a pan, heat salsa until simmering.
        Add tortilla chips and cook until slightly softened.
        Push chips to one side and crack eggs into the pan.
        Cook eggs to desired doneness.
        Serve chilaquiles topped with eggs, cheese, and cilantro.
        """,
        ingredients: "Tortilla chips, salsa, eggs, cheese"
    ),
    Recipe(
        name: "Tom Yum Soup",
        recipeimage: "tom_yum_soup.jpg",
        time: "30 Minutes",
        course: "Breakfast",
        cuisine: "Thai",
        procedure: """
        In a pot, bring broth to a boil.
        Add lemongrass, galangal, and mushrooms.
        Simmer for 10 minutes, then add shrimp.
        Cook until shrimp turn pink and opaque.
        Finish with lime juice and cilantro.
        """,
        ingredients: "Shrimp, lemongrass, galangal, mushrooms"
    ),
    Recipe(
        name: "Frittata",
        recipeimage: "frittata.jpg",
        time: "30 Minutes",
        course: "Breakfast",
        cuisine: "Italian",
        procedure: """
        Preheat oven to 350°F (175°C).
        In a skillet, sauté vegetables until tender.
        Whisk eggs with milk and seasonings.
        Pour egg mixture into skillet and cook until edges set.
        Transfer skillet to oven and bake until golden.
        """,
        ingredients: "Eggs, vegetables, cheese"
    ),
    Recipe(
        name: "Poha",
        recipeimage: "poha.jpg",
        time: "20 Minutes",
        course: "Breakfast",
        cuisine: "Indian",
        procedure: """
        Rinse poha (flattened rice) in water and drain.
        Heat oil, add mustard seeds, curry leaves, and chopped onions.
        Add turmeric, salt, and poha. Cook until heated through.
        Garnish with cilantro and serve with lemon wedges.
        """,
        ingredients: "Poha, mustard seeds, curry leaves, onions"
    ),
    Recipe(
        name: "Congee",
        recipeimage: "congee.jpg",
        time: "1 Hour",
        course: "Breakfast",
        cuisine: "Chinese",
        procedure: """
        Rinse rice and add to a pot with broth.
        Bring to a boil, then reduce heat and simmer.
        Stir occasionally until rice breaks down and thickens.
        Serve with toppings like green onions, eggs, and soy sauce.
        """,
        ingredients: "Rice, broth, green onions, eggs"
    ),
    Recipe(
        name: "Aussie Breakfast Bowl",
        recipeimage: "aussie_breakfast.jpg",
        time: "30 Minutes",
        course: "Breakfast",
        cuisine: "Australian",
        procedure: """
        Cook bacon until crispy and set aside.
        Sauté cherry tomatoes and mushrooms in bacon fat.
        Cook eggs sunny-side-up or poached.
        Assemble bowl with cooked quinoa, bacon, veggies, and eggs.
        """,
        ingredients: "Bacon, cherry tomatoes, mushrooms, eggs, quinoa"
    ),
    Recipe(
        name: "Idli Sambar",
        recipeimage: "idli_sambar.jpg",
        time: "2 Hours",
        course: "Breakfast",
        cuisine: "Indian",
        procedure: """
        Soak rice and lentils separately for 4-6 hours.
        Grind into a smooth batter, then ferment overnight.
        Steam idlis in molds until cooked through.
        Serve hot with flavorful sambar and coconut chutney.
        """,
        ingredients: "Rice, lentils, vegetables, tamarind"
    ),
    Recipe(
        name: "Chinese Scallion Pancakes",
        recipeimage: "scallion_pancakes.jpg",
        time: "45 Minutes",
        course: "Breakfast",
        cuisine: "Chinese",
        procedure: """
        Mix flour, water, and salt to form a dough.
        Roll out dough, brush with oil, and sprinkle with scallions.
        Roll up dough into a log, then coil into a circle.
        Flatten and pan-fry until golden and crispy.
        """,
        ingredients: "Flour, scallions, oil"
    ),
    Recipe(
        name: "Bruschetta",
        recipeimage: "bruschetta.jpg",
        time: "20 Minutes",
        course: "Appetizer",
        cuisine: "Italian",
        procedure: """
        Toast baguette slices until crisp.
        Rub with garlic and drizzle with olive oil.
        Top with diced tomatoes and fresh basil.
        Season with salt and pepper.
        """,
        ingredients: "Baguette, tomatoes, basil, garlic, olive oil"
    ),
    Recipe(
        name: "Stuffed Mushrooms",
        recipeimage: "stuffed_mushrooms.jpg",
        time: "35 Minutes",
        course: "Appetizer",
        cuisine: "American",
        procedure: """
        Remove stems from mushrooms and chop finely.
        Mix chopped stems with cream cheese and herbs.
        Stuff mushroom caps with mixture.
        Bake until mushrooms are tender.
        """,
        ingredients: "Mushrooms, cream cheese, breadcrumbs, herbs"
    ),
    Recipe(
        name: "Caprese Skewers",
        recipeimage: "caprese_skewers.jpg",
        time: "15 Minutes",
        course: "Appetizer",
        cuisine: "Italian",
        procedure: """
        Thread cherry tomatoes, mozzarella, and basil onto skewers.
        Drizzle with balsamic glaze.
        Season with salt and pepper.
        """,
        ingredients: "Cherry tomatoes, mozzarella, basil, balsamic glaze"
    ),
    Recipe(
        name: "Spinach Artichoke Dip",
        recipeimage: "spinach_artichoke_dip.jpg",
        time: "40 Minutes",
        course: "Appetizer",
        cuisine: "American",
        procedure: """
        Mix spinach, artichokes, cream cheese, and parmesan.
        Bake until bubbly and golden.
        Serve with tortilla chips or crackers.
        """,
        ingredients: "Spinach, artichokes, cream cheese, parmesan"
    ),
    Recipe(
        name: "Cucumber Rolls",
        recipeimage: "cucumber_rolls.jpg",
        time: "20 Minutes",
        course: "Appetizer",
        cuisine: "Thai",
        procedure: """
        Slice cucumbers lengthwise into thin strips.
        Spread hummus on each cucumber strip.
        Top with bell peppers and carrots.
        Roll up and secure with toothpicks.
        """,
        ingredients: "Cucumbers, hummus, bell peppers, carrots"
    ),
    Recipe(
        name: "Chicken Satay",
        recipeimage: "chicken_satay.jpg",
        time: "1 Hour",
        course: "Appetizer",
        cuisine: "Thai",
        procedure: """
        Marinate chicken in peanut sauce.
        Thread onto skewers and grill until cooked.
        Serve with cucumber salad and extra sauce.
        """,
        ingredients: "Chicken, peanut sauce, cucumber salad"
    ),
    Recipe(
        name: "Caprese Salad",
        recipeimage: "caprese_salad.jpg",
        time: "15 Minutes",
        course: "Appetizer",
        cuisine: "Italian",
        procedure: """
        Arrange tomato and mozzarella slices on a plate.
        Drizzle with olive oil and balsamic glaze.
        Season with salt, pepper, and fresh basil.
        """,
        ingredients: "Tomatoes, mozzarella, basil, balsamic glaze"
    ),
    Recipe(
        name: "Guacamole",
        recipeimage: "guacamole.jpg",
        time: "15 Minutes",
        course: "Appetizer",
        cuisine: "Mexican",
        procedure: """
        Mash avocados in a bowl.
        Mix in tomatoes, onions, cilantro, and lime juice.
        Season with salt and pepper.
        """,
        ingredients: "Avocado, tomatoes, onions, lime juice"
    ),
    Recipe(
        name: "Potstickers",
        recipeimage: "potstickers.jpg",
        time: "1 Hour",
        course: "Appetizer",
        cuisine: "Chinese",
        procedure: """
        Mix ground pork with cabbage and soy sauce.
        Place filling in center of wonton wrapper.
        Fold wrapper and seal edges with water.
        Pan-fry dumplings until golden and crispy.
        """,
        ingredients: "Ground pork, cabbage, soy sauce"
    ),
    Recipe(
        name: "Hummus Platter",
        recipeimage: "hummus_platter.jpg",
        time: "15 Minutes",
        course: "Appetizer",
        cuisine: "Turkish",
        procedure: """
        Spread hummus on a serving platter.
        Drizzle with olive oil and sprinkle with paprika.
        Serve with pita bread, olives, and vegetables.
        """,
        ingredients: "Chickpeas, tahini, garlic, olive oil"
    ),
    Recipe(
        name: "Lasagna",
        recipeimage: "lasagna.jpg",
        time: "1 Hour 30 Minutes",
        course: "Main Course",
        cuisine: "Italian",
        procedure: """
        Cook lasagna noodles according to package instructions.
        Layer noodles with marinara sauce, cheese, and meat.
        Repeat layers and bake until bubbly and golden.
        """,
        ingredients: "Pasta, ground beef, marinara sauce, cheese"
    ),
    Recipe(
        name: "Chicken Alfredo",
        recipeimage: "chicken_alfredo.jpg",
        time: "45 Minutes",
        course: "Main Course",
        cuisine: "Italian",
        procedure: """
        Cook fettuccine according to package instructions.
        In a skillet, cook chicken until browned.
        Add alfredo sauce and broccoli, simmer until heated through.
        Serve over cooked fettuccine.
        """,
        ingredients: "Chicken, fettuccine, alfredo sauce, broccoli"
    ),
    Recipe(
        name: "Beef Tacos",
        recipeimage: "beef_tacos.jpg",
        time: "30 Minutes",
        course: "Main Course",
        cuisine: "Mexican",
        procedure: """
        Brown ground beef in a skillet.
        Add taco seasoning and water, simmer until thickened.
        Serve beef in tortillas with toppings.
        """,
        ingredients: "Tortillas, beef, lettuce, cheese, salsa"
    ),
    Recipe(
        name: "Salmon with Lemon Butter",
        recipeimage: "salmon_lemon_butter.jpg",
        time: "25 Minutes",
        course: "Main Course",
        cuisine: "American",
        procedure: """
        Season salmon fillets with salt and pepper.
        In a skillet, melt butter and add garlic and lemon.
        Cook salmon in butter until flaky.
        Serve with lemon butter sauce.
        """,
        ingredients: "Salmon fillets, butter, lemon, garlic, parsley"
    ),
    Recipe(
        name: "Vegetable Stir Fry",
        recipeimage: "vegetable_stir_fry.jpg",
        time: "20 Minutes",
        course: "Main Course",
        cuisine: "Chinese",
        procedure: """
        Heat oil in a large skillet or wok over medium-high heat.
        Add mixed vegetables and stir-fry until tender-crisp, about 5-7 minutes.
        Stir in soy sauce and ginger, cooking for another 1-2 minutes.
        Serve hot over steamed rice.
        """,
        ingredients: "Mixed vegetables, soy sauce, ginger, rice"
    ),
    Recipe(
        name: "Pad Thai",
        recipeimage: "pad_thai.jpg",
        time: "30 Minutes",
        course: "Main Course",
        cuisine: "Thai",
        procedure: """
        Soak rice noodles in warm water for 20-30 minutes until softened.
        Heat oil in a wok or large skillet over medium-high heat.
        Add shrimp and stir-fry until pink and cooked through, about 2-3 minutes.
        Push shrimp to the side and crack an egg into the pan, scrambling until cooked.
        Add softened noodles, bean sprouts, peanuts, and sauce, tossing to combine.
        Cook for another 2-3 minutes until everything is heated through.
        Serve hot garnished with lime wedges and cilantro.
        """,
        ingredients: "Rice noodles, shrimp, peanuts, bean sprouts"
    ),
    Recipe(
        name: "Tacos al Pastor",
        recipeimage: "tacos_al_pastor.jpg",
        time: "45 Minutes",
        course: "Main Course",
        cuisine: "Mexican",
        procedure: """
        Marinate pork in achiote paste, pineapple juice, and spices for 2-4 hours.
        Preheat grill to medium-high heat.
        Grill marinated pork until charred and cooked through, about 10-12 minutes per side.
        Slice pork thinly and serve in warm tortillas with pineapple, onions, and cilantro.
        """,
        ingredients: "Pork, pineapple, onions, cilantro"
    ),
    Recipe(
        name: "BBQ Ribs",
        recipeimage: "bbq_ribs.jpg",
        time: "2 Hours",
        course: "Main Course",
        cuisine: "American",
        procedure: """
        Preheat oven to 300°F (150°C).
        Rub pork ribs with BBQ seasoning and wrap tightly in foil.
        Bake in the preheated oven for 1.5-2 hours until tender.
        Remove foil, brush ribs with BBQ sauce, and broil for 5-7 minutes until caramelized.
        Serve hot with coleslaw on the side.
        """,
        ingredients: "Pork ribs, BBQ sauce, coleslaw"
    ),
    Recipe(
        name: "Risotto",
        recipeimage: "risotto.jpg",
        time: "45 Minutes",
        course: "Main Course",
        cuisine: "Italian",
        procedure: """
        Heat olive oil in a large skillet over medium heat.
        Add chopped mushrooms and cook until browned, about 5-7 minutes.
        Stir in Arborio rice and cook for another 2 minutes.
        Add warm broth, 1/2 cup at a time, stirring frequently until absorbed.
        Continue until rice is creamy and cooked through, about 20-25 minutes.
        Stir in grated Parmesan cheese and season with salt and pepper.
        Serve hot, garnished with fresh parsley.
        """,
        ingredients: "Arborio rice, mushrooms, parmesan cheese"
    ),
    Recipe(
        name: "Kung Pao Chicken",
        recipeimage: "kung_pao_chicken.jpg",
        time: "30 Minutes",
        course: "Main Course",
        cuisine: "Chinese",
        procedure: """
        Marinate chicken in soy sauce, rice wine, and cornstarch for 30 minutes.
        Heat oil in a wok or skillet over high heat.
        Add marinated chicken and stir-fry until browned and cooked through.
        Add peanuts, dried chili peppers, and diced vegetables, stir-frying for another 2-3 minutes.
        Stir in a sauce made of soy sauce, vinegar, sugar, and cornstarch slurry.
        Cook until the sauce thickens and coats the chicken and vegetables.
        Serve hot over steamed rice.
        """,
        ingredients: "Chicken, peanuts, vegetables, chili peppers"
    ),
    Recipe(
        name: "Chocolate Cake",
        recipeimage: "chocolate_cake.jpg",
        time: "1 Hour",
        course: "Dessert",
        cuisine: "American",
        procedure: """
        Bake the chocolate cake at 350°F (175°C) for 30 to 35 minutes.
        Let it cool in the pans for 10 minutes, then transfer to a wire rack.
        Frost with your favorite chocolate frosting.
        Enjoy this decadent chocolatey delight!
        """,
        ingredients: "Flour, cocoa powder, sugar, eggs, butter"
    ),
    Recipe(
        name: "Apple Pie",
        recipeimage: "apple_pie.jpg",
        time: "1 Hour 30 Minutes",
        course: "Dessert",
        cuisine: "American",
        procedure: """
        Preheat oven to 425°F (220°C).
        Fill the pie crust with apple mixture.
        Dot the top with butter and cover with the remaining crust.
        Bake for 45 to 55 minutes until golden brown.
        Serve warm with a scoop of vanilla ice cream.
        """,
        ingredients: "Apples, flour, sugar, cinnamon, pie crust"
    ),
    Recipe(
        name: "Tiramisu",
        recipeimage: "tiramisu.jpg",
        time: "4 Hours",
        course: "Dessert",
        cuisine: "Italian",
        procedure: """
        Dip ladyfingers in espresso and line a dish.
        Spread half of the mascarpone mixture over the ladyfingers.
        Add another layer of dipped ladyfingers and top with mascarpone.
        Refrigerate for at least 4 hours or overnight.
        Dust with cocoa powder before serving.
        """,
        ingredients: "Ladyfingers, espresso, mascarpone, cocoa"
    ),
    Recipe(
        name: "Strawberry Shortcake",
        recipeimage: "strawberry_shortcake.jpg",
        time: "45 Minutes",
        course: "Dessert",
        cuisine: "American",
        procedure: """
        Bake the cake until golden brown and let cool.
        Slice strawberries and whip the cream.
        Layer cake with strawberries and whipped cream.
        Top with more strawberries and enjoy!
        """,
        ingredients: "Strawberries, cake, whipped cream"
    ),
    Recipe(
        name: "Banana Bread",
        recipeimage: "banana_bread.jpg",
        time: "1 Hour 15 Minutes",
        course: "Dessert",
        cuisine: "American",
        procedure: """
        Preheat oven to 350°F (175°C) and grease a loaf pan.
        Mix bananas, flour, sugar, eggs, and butter until combined.
        Pour batter into the loaf pan and bake for 60-65 minutes.
        Let cool before slicing and serving.
        """,
        ingredients: "Bananas, flour, sugar, eggs, butter"
    ),
    Recipe(
        name: "Churros",
        recipeimage: "churros.jpg",
        time: "45 Minutes",
        course: "Dessert",
        cuisine: "Mexican",
        procedure: """
        Combine water, butter, sugar, and salt in a saucepan.
        Bring to a boil and remove from heat.
        Stir in flour until dough forms.
        Pipe dough into hot oil and fry until golden.
        Roll in cinnamon sugar and serve with chocolate sauce.
        """,
        ingredients: "Flour, sugar, cinnamon, chocolate sauce"
    ),
    
    Recipe(
        name: "Mango Sticky Rice",
        recipeimage: "mango_sticky_rice.jpg",
        time: "45 Minutes",
        course: "Dessert",
        cuisine: "Thai",
        procedure: """
        Rinse sticky rice until water runs clear and soak for 30 minutes.
        Steam rice until tender and prepare coconut sauce.
        Serve sticky rice with sliced mangoes and drizzle with coconut sauce.
        Enjoy this sweet and creamy Thai dessert!
        """,
        ingredients: "Sticky rice, mangoes, coconut milk"
    ),
    Recipe(
        name: "Panna Cotta",
        recipeimage: "panna_cotta.jpg",
        time: "2 Hours",
        course: "Dessert",
        cuisine: "Italian",
        procedure: """
        Bloom gelatin in cold water and set aside.
        Heat cream, sugar, and vanilla until steaming.
        Remove from heat, add gelatin, and stir until dissolved.
        Pour into molds and refrigerate for at least 2 hours.
        Serve with fresh berries or fruit compote.
        """,
        ingredients: "Cream, gelatin, sugar, vanilla"
    ),
    Recipe(
        name: "Gulab Jamun",
        recipeimage: "gulab_jamun.jpg",
        time: "1 Hour",
        course: "Dessert",
        cuisine: "Indian",
        procedure: """
        Make a dough with milk powder, ghee, and milk.
        Form into small balls and deep fry until golden brown.
        Make a sugar syrup with water, sugar, and cardamom.
        Soak the fried balls in the syrup and let them absorb.
        Serve warm garnished with nuts.
        """,
        ingredients: "Milk powder, ghee, milk, sugar, cardamom"
    ),
    Recipe(
        name: "Lamingtons",
        recipeimage: "lamingtons.jpg",
        time: "1 Hour",
        course: "Dessert",
        cuisine: "Australian",
        procedure: """
        Bake sponge cake and let it cool.
        Cut into squares and dip in chocolate icing.
        Roll in desiccated coconut and let set.
        Serve these iconic Australian treats!
        """,
        ingredients: "Sponge cake, chocolate icing, desiccated coconut"
    ),
    Recipe(
        name: "Baklava",
        recipeimage: "baklava.jpg",
        time: "1 Hour 30 Minutes",
        course: "Dessert",
        cuisine: "Turkish",
        procedure: """
        Preheat oven to 350°F (175°C).
        Layer phyllo dough, butter, and nuts in a pan.
        Bake until golden brown and crisp.
        Make a syrup with water, sugar, and lemon.
        Pour syrup over hot baklava and let cool.
        """,
        ingredients: "Phyllo dough, butter, nuts, sugar, lemon"
    ),
    Recipe(
        name: "Rasmalai",
        recipeimage: "rasmalai.jpg",
        time: "2 Hours",
        course: "Dessert",
        cuisine: "Indian",
        procedure: """
        Boil milk and curdle with lemon juice.
        Strain the curds and knead into smooth balls.
        Flatten the balls and simmer in sugar syrup.
        Serve chilled, garnished with saffron and nuts.
        """,
        ingredients: "Milk, lemon juice, sugar, saffron, nuts"
    ),
    Recipe(
        name: "Anzac Biscuits",
        recipeimage: "anzac_biscuits.jpg",
        time: "30 Minutes",
        course: "Dessert",
        cuisine: "Australian",
        procedure: """
        Preheat oven to 325°F (160°C) and line a baking sheet.
        Mix oats, flour, sugar, coconut, and golden syrup.
        Add melted butter and baking soda dissolved in boiling water.
        Form into cookies and bake until golden.
        """,
        ingredients: "Oats, flour, sugar, coconut, golden syrup, butter"
    ),
    Recipe(
        name: "Turkish Delight",
        recipeimage: "turkish_delight.jpg",
        time: "2 Hours",
        course: "Dessert",
        cuisine: "Turkish",
        procedure: """
        Mix sugar, water, and lemon juice in a saucepan.
        Simmer until sugar dissolves, then add cornstarch.
        Cook until thickened, then add rosewater and nuts.
        Pour into a pan and let set, then cut into squares.
        Coat with powdered sugar and enjoy this sweet delight!
        """,
        ingredients: "Sugar, water, lemon juice, cornstarch, rosewater, nuts"
    ),
    Recipe(
        name: "Green Juice",
        recipeimage: "green_juice.jpg",
        time: "10 Minutes",
        course: "Juice",
        cuisine: "Indian",
        procedure: """
        Wash spinach and kale thoroughly.
        Peel the apple and cucumber.
        Cut all ingredients into small pieces.
        Blend everything together with lemon juice and water.
        Strain the juice and serve chilled.
        """,
        ingredients: "Spinach, kale, apple, cucumber, lemon"
    ),
    Recipe(
        name: "Orange Carrot Juice",
        recipeimage: "orange_carrot_juice.jpg",
        time: "15 Minutes",
        course: "Juice",
        cuisine: "Indian",
        procedure: """
        Peel the oranges and carrots.
        Cut them into smaller pieces for easier blending.
        Add the pieces to a blender along with ginger and turmeric.
        Blend until smooth, adding water if needed.
        Strain the juice and serve fresh.
        """,
        ingredients: "Oranges, carrots, ginger, turmeric"
    ),
    Recipe(
        name: "Berry Blast Smoothie",
        recipeimage: "berry_blast_smoothie.jpg",
        time: "5 Minutes",
        course: "Juice",
        cuisine: "Australian",
        procedure: """
        Combine mixed berries, banana, yogurt, and honey in a blender.
        Blend until smooth, adding more yogurt or honey if needed.
        Pour into glasses and enjoy this refreshing smoothie!
        """,
        ingredients: "Mixed berries, banana, yogurt, honey"
    ),
    Recipe(
        name: "Pineapple Mint Juice",
        recipeimage: "pineapple_mint_juice.jpg",
        time: "10 Minutes",
        course: "Juice",
        cuisine: "Australian",
        procedure: """
        Peel and core the pineapple, then cut into chunks.
        Squeeze the juice of fresh lime.
        Blend the pineapple chunks, mint leaves, lime juice, and honey.
        Strain the mixture and serve over ice.
        """,
        ingredients: "Pineapple, mint leaves, lime, honey"
    ),
    Recipe(
        name: "Watermelon Cucumber Cooler",
        recipeimage: "watermelon_cucumber_cooler.jpg",
        time: "10 Minutes",
        course: "Juice",
        cuisine: "Thai",
        procedure: """
        Cut watermelon into chunks, removing seeds.
        Peel and chop cucumber into pieces.
        Blend watermelon, cucumber, mint leaves, and lime juice.
        Strain the juice and serve chilled.
        """,
        ingredients: "Watermelon, cucumber, mint, lime"
    ),
    Recipe(
        name: "Mango Smoothie",
        recipeimage: "mango_smoothie.jpg",
        time: "5 Minutes",
        course: "Juice",
        cuisine: "Indian",
        procedure: """
        Peel and dice the mango.
        Add mango, yogurt, honey, and a splash of milk to a blender.
        Blend until smooth and creamy.
        Pour into glasses and enjoy this tropical delight!
        """,
        ingredients: "Mango, yogurt, honey, milk"
    ),
    Recipe(
        name: "Pomegranate Juice",
        recipeimage: "pomegranate_juice.jpg",
        time: "15 Minutes",
        course: "Juice",
        cuisine: "Middle Eastern",
        procedure: """
        Cut the pomegranate and extract the seeds.
        Blend the pomegranate seeds with water.
        Strain the juice to remove any pulp.
        Serve chilled with a squeeze of lime.
        """,
        ingredients: "Pomegranate seeds, water, lime"
    ),
    Recipe(
        name: "Carrot Ginger Juice",
        recipeimage: "carrot_ginger_juice.jpg",
        time: "10 Minutes",
        course: "Juice",
        cuisine: "Indian",
        procedure: """
        Wash and peel the carrots and ginger.
        Cut into smaller pieces for easy blending.
        Add carrots, ginger, and a splash of water to a blender.
        Blend until smooth and strain the juice.
        Serve fresh with a garnish of mint.
        """,
        ingredients: "Carrots, ginger, water, mint"
    ),
    Recipe(
        name: "Blueberry Lemonade",
        recipeimage: "blueberry_lemonade.jpg",
        time: "10 Minutes",
        course: "Juice",
        cuisine: "American",
        procedure: """
        Juice lemons to make fresh lemonade.
        Blend blueberries with a splash of water.
        Mix blueberry puree with lemonade.
        Serve over ice with a lemon slice.
        """,
        ingredients: "Lemons, blueberries, water, sugar"
    ),
    Recipe(
        name: "Thai Iced Tea",
        recipeimage: "thai_iced_tea.jpg",
        time: "15 Minutes",
        course: "Juice",
        cuisine: "Thai",
        procedure: """
        Brew Thai tea leaves in boiling water for 5 minutes.
        Strain the tea and let it cool to room temperature.
        Add sweetened condensed milk and stir well.
        Pour over ice and top with evaporated milk.
        """,
        ingredients: "Thai tea leaves, sweetened condensed milk, evaporated milk"
    ),
    Recipe(
        name: "Italian Orange Spritz",
        recipeimage: "orange_spritz.jpg",
        time: "10 Minutes",
        course: "Juice",
        cuisine: "Italian",
        procedure: """
        Mix fresh orange juice with sparkling water.
        Add a splash of Aperol and stir gently.
        Serve over ice with a slice of orange.
        """,
        ingredients: "Orange juice, sparkling water, Aperol"
    ),
    Recipe(
        name: "Turkish Ayran",
        recipeimage: "turkish_ayran.jpg",
        time: "5 Minutes",
        course: "Juice",
        cuisine: "Turkish",
        procedure: """
        Mix yogurt and water until smooth and creamy.
        Add a pinch of salt and stir well.
        Serve chilled with a sprinkle of dried mint.
        """,
        ingredients: "Yogurt, water, salt, dried mint"
    ),
    Recipe(
        name: "Aussie Mango-Pineapple Cooler",
        recipeimage: "mango_pineapple_cooler.jpg",
        time: "10 Minutes",
        course: "Juice",
        cuisine: "Australian",
        procedure: """
        Blend fresh mango and pineapple until smooth.
        Add coconut water and a squeeze of lime.
        Shake well and serve over ice.
        """,
        ingredients: "Mango, pineapple, coconut water, lime"
    ),
    Recipe(
        name: "Turkish Pomegranate Tea",
        recipeimage: "turkish_pomegranate_tea.jpg",
        time: "15 Minutes",
        course: "Juice",
        cuisine: "Turkish",
        procedure: """
        Steep black tea bags in hot water for 5 minutes.
        Add pomegranate juice and stir well.
        Sweeten with sugar or honey to taste.
        Serve hot or cold, garnished with a slice of lemon.
        """,
        ingredients: "Black tea bags, pomegranate juice, sugar or honey, lemon"
    )
]
