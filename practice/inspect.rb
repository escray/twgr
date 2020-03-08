class Person
  def initialize(name)
    @name = name
  end
  def inspect
    @name
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
n = gets.chomp
puts n * 100
