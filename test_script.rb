require_relative "coffee.rb"
require_relative "decorator.rb"

coffee_type = []
coffee_type << Decaf.new
coffee_type << Espresso.new


for i in 1..5
  coffee_type_index = rand(0..1)
  num = rand(0..2)
  if 0 == num
    obj = milk_deco = MilkDecorator.new(coffee_type[coffee_type_index])
  elsif 1 == num
    obj = sugar_deco = SugarDecorator.new(coffee_type[coffee_type_index])
  else
    milk_deco = MilkDecorator.new(coffee_type[coffee_type_index])
    obj = sugar_deco = SugarDecorator.new(milk_deco)
  end
  puts obj.description
  puts obj.cost
end


=begin
milk_deco = MilkDecorator.new(decaf)
sugar_deco = SugarDecorator.new(milk_deco)
puts sugar_deco.description
puts sugar_deco.cost
=end

