class Potluck
  attr_reader :date , :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def dishes
    @dishes
  end

  def get_all_from_category(category)
    if category == :appetizer
      @dishes.select do |dish|
      dish.category == :appetizer
      end
    elsif category == :entre
        @dishes.select do |dish|
          dish.category == :entre
        end
      elsif category == :desert
        @dishes.select do |dish|
          dish.category == :desert
        end
    end
  end

  def menu
    # @dishes.group_by do |dish|
    #   dish.category

    # end
    @dishes.each_with_object({}) do |dish, hash|
      if hash[dish.category]
        hash[dish.category] = hash[dish.category].push(dish.name)
      else
        hash[dish.category] = [dish.name]
      end
     p hash[dish.category].sort!

    end
  end

end
