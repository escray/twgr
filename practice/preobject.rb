# frozen_string_literal: false

module Secretive
  def name
    '[not available]'
  end
end
class Person
  attr_accessor :name
end
david = Person.new
david.name = 'David'
joe = Person.new
joe.name = 'joe'
ruby = Person.new
ruby.name = 'ruby'
david.extend(Secretive)
ruby.extend(Secretive)

puts "We'v got one person named #{joe.name}, " \
     "one named #{david.name}, " \
     "and one named #{ruby.name}."

module Makers
  def makes
    %( Honda Ford Toyota Chevrolet Volvo)
  end
end
class Car
  extend Makers
end

p Car.singleton_class.ancestors

module GsubBangModifier
  def gsub!(*args, &block)
    super || self
  end
end
str = 'Hello there!'
str.extend(GsubBangModifier)
str.gsub!(/zzz/, 'abc').reverse!
puts str
