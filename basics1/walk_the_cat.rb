module Walkable
  def walk
    "Let's go for a walk!"
  end

end

class Cat
  attr_accessor :name 
  include Walkable
  def initialize(name)
    @name = name
  end 
  
  def greet
    puts "hello! my name is #{name}"
  end
end

kitty = Cat.new("sophie")
puts kitty.greet
puts kitty.walk