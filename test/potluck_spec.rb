require 'rspec'
require './lib/dish.rb'
require './lib/potluck.rb'

RSpec.describe Potluck do
  it 'exists' do
    potluck = Potluck.new("7-13-18")

    expect(potluck).to be_an_instance_of(Potluck)
  end

  it 'can have multiple dishes' do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    potluck = Potluck.new("7-13-18")

    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    potluck.dishes

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)


  end




end

