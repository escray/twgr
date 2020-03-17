
class Person
  attr_accessor :name
end

david = Person.new
david.name = 'David'
joe = Person.new
joe.name = 'Joe'
ruby = Person.new
ruby.name = 'Ruby'

def david.name
  '[not available]'
end

module Secretive
  def name
    '[not available]'
  end
end

class << ruby
  include Secretive
end

puts "We've got one person named #{joe.name}"
puts "one named #{david.name}"
puts "and one named #{ruby.name}"

module M
  def talk
    puts 'Hellor from module!'
  end
end

class C
  # include M
  def talk
    puts 'Hi, from original class!'
  end
end

c = C.new
c.talk

class << c
  include M
  p ancestors
end
c.talk

class C
  include M
end
class << c
  p ancestors
end

string = 'a string'
p string.singleton_class.ancestors
