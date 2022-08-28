require 'rspec'
require './lib/dish.rb'

RSpec.describe Dish do
  it 'exists' do
    dish = Dish.new("couscous Salad", :appetizer)

    expect(dish).to be_an_instance_of(Dish)
  end
end

