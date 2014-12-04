require 'singleton'


class PersonState
  include Singleton
  def vote

  end

  def apply_for_buspass

  end

  def conscript

  end

  def apply_for_medical_card

  end

  def change_life_stage(context)

  end
end


class Child < PersonState
  def vote
    puts "Too young to vote"
  end

  def apply_for_buspass
      puts "Too young for a bus pass"
  end

  def conscript
      puts "Too young to be conscripted"
  end

  def apply_for_medical_card
    puts "Qualify for a medical card"
  end

  def change_life_stage(context)
    if context.age == 13
      context.set_state(Teenagers.instance)
    end
  end
end

class Teenagers < PersonState
  def vote
    puts "Teenagers: Too young to vote"
  end

  def apply_for_buspass
    puts "Teenagers: Pass granted"
  end

  def conscript
    puts "Teenagers: Here's your gun"
  end

  def apply_for_medical_card
    puts "DO NOT Qualify for a medical card"
  end

  def change_life_stage(context)
    if context.age == 18
      context.set_state(Adult.instance)
    end
  end
end

class Adult < PersonState
  def vote
    puts "ADULT: Vote accepted"
  end

  def apply_for_buspass
    puts "ADULT: Too young for a bus pass"
  end

  def conscript
    puts "ADULT: Here's your gun"
  end

  def apply_for_medical_card
    puts "ADULT: DO NOT Qualify for a medical card"
  end

  def change_life_stage(context)
    if context.age == 65
      context.set_state(Pensioner.instance)
    end
  end
end

class Pensioner < PersonState
  def vote
    puts "Pensioner: Vote accepted"
  end

  def apply_for_buspass
    puts "Pensioner: Pass granted"
  end

  def conscript
    puts "Pensioner: Too old to be conscripted"
  end

  def apply_for_medical_card
    puts "Pensioner: Qualify for a medical card"
  end
end

