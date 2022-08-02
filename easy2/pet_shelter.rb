 class Shelter
  attr_reader :new_owner, :new_pet
  
  @@adoptions = {}
 
 def adopt(new_owner, new_pet)
  if @@adoptions.include?(new_owner)
    @@adoptions[new_owner] << new_pet
  else 
    @@adoptions[new_owner] = [new_pet]
  end 
 end 
  
  def print_adoptions
    @@adoptions.each_pair do |owner, pets|
     puts "#{owner.name} has adopted the following pets:"
      pets.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
    end
  end 
end
 
 class Pet < Shelter
    attr_reader :type, :name
    
    def initialize(type, name)
      @type = type
      @name = name
    end 
  end 
  
  class Owner < Shelter
    attr_reader :name, :number_of_pets    
    
    def initialize(name)
      @name = name 
    end 
  
  def number_of_pets
    @@adoptions[self].size
  end 
end 

 


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."




