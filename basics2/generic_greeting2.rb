class Cat
  attr_accessor :name
  def self.generic_greeting
    "I'm a cat!"
  end
  
  def initialize(name)
    @name = name
  end
  
  def personal_greeting
    "My name is #{name}!"
  end 
end 

kitty = Cat.new("Sophie")
p Cat.generic_greeting
p kitty.personal_greeting

