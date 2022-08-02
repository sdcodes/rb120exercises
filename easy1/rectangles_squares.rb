class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(length)
    @height = length
    @width = length
  end 
end 

square = Square.new(5)
puts "area of square = #{square.area}"

# OR OTHER WAY

class Square < Rectangle
  def initialize(length)
    super(length, length
  end 
end 