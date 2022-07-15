class Cat
  COLOR_OF_CAT = "black"
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end 
  
  def greet
    puts "Hello! My name is #{name} and I'm a #{COLOR_OF_CAT} cat!"
  end 
end 

 kitty = Cat.new('Sophie')
kitty.greet