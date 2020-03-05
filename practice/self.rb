class C
  puts "Just started class C:"
  puts self
  module M
    puts "Nested module C::M:"
    puts self
  end
  puts "Back in the outer level of C:"
  puts self

  def x
    puts "\nClass C, method x:"
    puts self
  end

  def self.x
    puts "\nClass method of class C"
    puts "self: #{self}"
  end

  def C.no_dot
    puts "\nAs long as self is C, you can call this method with no dot"
  end
  no_dot
end

class D < C
end

c = C.new
c.x
puts "That was a call to x from: #{c}"

obj = Object.new
def obj.show_me
  puts "\nInside singleton method show_me of #{self}"
end
obj.show_me
puts "Back from call to show_me by #{obj}"

C.x

D.x

C.no_dot
