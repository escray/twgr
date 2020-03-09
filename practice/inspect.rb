class Person
  attr_accessor :name, :age, :email
  def initialize(name)
    @name = name
  end
  def inspect
    @name
  end
  def to_str
    name
  end
  def to_ary
    [name, age, email]
  end
end

david = Person.new("David")
puts david.inspect

def combine_names(first_name, last_name)
  first_name + " " + last_name
end

names = ["David", "Black"]
puts combine_names(*names)

print "Enter a number:"
n = gets.chomp.to_i
puts n * 100

david.name = "David"
david.age = 55
david.email = "david@wherever"
array = []
array.concat(david)
puts "david is named " + david + "."
p array
