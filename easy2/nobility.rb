module Walkable
  def walk
    puts "#{name} #{gait} forward."
  end 
end 

class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "runs"
  end
end

class Noble
  attr_accessor :total_name
  include Walkable
  
  def initialize(name, title)
  @name = name
  @title = title
  @total_name = "#{title} #{name}"
  end 
  
  def walk
    puts "#{total_name} struts forward"
  end 
end 

byron = Noble.new("Byron", "Lord")
byron.walk


#OR OTHER METHOD

module Walkable
  def walk
    puts "#{name} #{gait} forward."
  end 
end 

class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  private

  def gait
    "runs"
  end
end

class Noble
  attr_accessor :name
  include Walkable
  
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
