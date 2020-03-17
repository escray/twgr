# frozen_string_literal: true

print 'Method name:'
m = gets.chomp
eval("def #{m}; puts 'Hi!'; end")
eval(m)

def use_a_binding(b)
  eval('puts str', b)
end
str = "I'm a string in top-level binding!"
use_a_binding(binding)

p self
a = []
a.instance_eval { p self }

class C
  def initialize
    @x = 1
  end
end
c = C.new
c.instance_eval { puts @x }

string = 'A sample string'
puts string.instance_exec('s') { |delim| split(delim) }
