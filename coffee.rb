class Coffee
  def description

  end

  def cost

  end
end


class Decaf < Coffee
  def description
    "decaffinated coffee"
  end

  def cost
    2.0
  end
end

class Espresso < Coffee
  def description
    "expresso coffee"
  end

  def cost
    1.5
  end
end

=begin
my_coffee = DecafWithMilkAndSugar.new
puts "My coffee is:"
puts my_coffee.description
puts "and costs:"
puts my_coffee.cost
=end
