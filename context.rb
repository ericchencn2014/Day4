require_relative "state.rb"

class Person
  attr_accessor :age

  def initialize
    @age = 0
    @person = Child.instance
  end

  def incr_age
    @age+=1
    @person.change_life_stage(self)
  end

  def set_state(new_state)
    @person = new_state
  end

  def vote
    @person.vote
  end

  def apply_for_buspass
    @person.apply_for_buspass
  end

  def conscript
    @person.conscript
  end

  def apply_for_medical_card
    @person.apply_for_medical_card
    puts "age: #{@age}"
  end
end

ctx = Person.new

# Uncommenting following piece of code would result into errors as they are now singleton classes.
#Child.new
#Teenagers.new
#Adult.new
#Pensioner.new

for i in 1..18
  ctx.incr_age
  ctx.apply_for_buspass
  ctx.vote
  ctx.conscript
  ctx.apply_for_medical_card
end

