class Person
  attr_accessor :name
  attr_writer :phone_number
end

person1 = Person.new
person1.name = "Jessica"
puts person1.name 
person1.phone_number = "00000000"
puts person1.name 