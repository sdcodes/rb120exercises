# class House
#   attr_reader :price

#   def initialize(price)
#     @price = price
#   end
  
#   def is_cheaper?(second_house)
#     if self.price < second_house.price
#       puts "Home 1 is cheaper"
#       puts "Home 2 is more expensive"
#     end 
#   end
# end

# OTHER WAY

class House
  attr_reader :price
  include Comparable
  
  def initialize(price)
    @price = price
  end 
  
  def <=>(other)
    price <=> other.price
  end 
end 

home1 = House.new(100_000)
home2 = House.new(150_000)
puts home1.is_cheaper?(home2)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1