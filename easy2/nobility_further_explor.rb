class Animal
  def walk
    puts "#{name} #{gait} forward."
  end 
end 

class Person < Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "strolls"
  end
end

class Cat < Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "saunters"
  end
end

class Cheetah < Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "runs"
  end
end

class Noble < Animal 
  attr_accessor :name
  
  def initialize(last_name, title)
  @last_name = last_name
  @title = title
  @name = "#{title} #{last_name}"
  end 
  
   private

  def gait
    "struts"
  end
end 



byron = Noble.new("Byron", "Lord")
byron.walk

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
