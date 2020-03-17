# frozen_string_literal: true

class Person
  def initialize(&block)
    instance_eval(&block)
  end

  def name(name = nil)
    @name ||= name
  end

  def age(age = nil)
    @age ||= age
  end
end

joe = Person.new do
  name 'Joe'
  age 37
end

p joe

c = Class.new
c.class_eval do
  def some_method
    puts 'Created in class_eval'
  end
end

c_instance = c.new
c_instance.some_method

var = 'initialized variable'
# class C
#   puts var
# end
# NameError
class C
end
C.class_eval { puts var }

C.class_eval { define_method('talk') { puts var } }
C.new.talk
# NameError
