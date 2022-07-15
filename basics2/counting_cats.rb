class Cat
  @@total_of_cats = 0
  
    def self.total
    @@total_of_cats
  end 
  
  def initialize
    @@total_of_cats += 1
  end
end 

kitty1 = Cat.new
kitty2 = Cat.new

p Cat.total