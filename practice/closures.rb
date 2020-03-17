# frozen_string_literal: true

def talk
  a = 'Hello'
  puts a
end
a = 'Goodbye'
talk
puts a

m = 10
p [1, 2, 3].each { |x| puts x * m }

def multiply_by(m)
  proc { |x| puts x * m }
end
mult = multiply_by(10)
p mult.call(12)

def call_some_proc(pr)
  a = "irrelevant 'a' in method scope"
  puts a
  pr.call
end
a = "'a' to be used in Proc block"
pr = proc { puts a }
pr.call
call_some_proc(pr)

def make_counter
  n = 0
  proc { n += 1 }
end
c = make_counter
puts c.call
puts c.call
d = make_counter
puts d.call
puts c.call

pr = proc { |x| puts "Called with argument #{x}" }
pr.call(100)

pr = proc { |x| p x }
p pr
p pr.call
pr.call(1, 2, 3)
