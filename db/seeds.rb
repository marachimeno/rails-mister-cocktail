require 'open-uri'

puts 'Cleaning database...'
Ingredient.destroy_all
Cocktail.destroy_all

ingredients_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
doc = open(ingredients_url).read
results = JSON.parse(doc)

results['drinks'].each do |ingredient|
  10.times do
    ingredient = Ingredient.create(
      name: ingredient['strIngredient1']
    )
  end
end
puts 'Ingredients created!'
# cockails_url = 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'
# doc2 = open(cockails_url).read
# results2 = JSON.parse(doc2)

# results2['drinks'].each do |name|
#   10.times do
#     name = Cocktail.create(
#       name: name['strDrink']
#     )
#   end
# end
