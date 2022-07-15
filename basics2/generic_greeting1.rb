module Walkable
  def walk
    "Let's go for a walk!"
  end

end

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
  
end

puts Cat.generic_greeting

kitty = Cat.new
puts kitty.class.generic_greeting 
# the class method is called upon the kitty variable which returns the Class 
# of the variable which is Cat. Cat is passed to generic_greeting which
# returns the class method called

