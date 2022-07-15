class Cat
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end 
  
  def greet
    puts "hello! my name is #{name}"
  end
end

kitty = Cat.new("sophie")
puts kitty.greet
puts kitty.name
kitty.name= "luna"
puts kitty.name
puts kitty.greet
