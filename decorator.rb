require_relative "coffee"

class Decorator < Coffee

end

class MilkDecorator < Decorator
  def initialize(obj)
    @coffee = obj
  end

  def description
    # MilkDecorator adds its own implementation after calling the delegation method.
    @coffee.description + "milk"

    # MilkDecorator adds its own implementation before calling the delegation method.
    #"milk" + @coffee.description
  end

  def cost
    @coffee.cost + 0.50
  end
end

class SugarDecorator < Decorator
  def initialize(obj)
    @coffee = obj
  end

  def description
    @coffee.description + "sugar"

    # MilkDecorator adds its own implementation before calling the delegation method.
    #"sugar" + @coffee.description
  end

  def cost
    @coffee.cost + 0.20
  end
end
