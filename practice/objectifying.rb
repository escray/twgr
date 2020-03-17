# frozen_string_literal: true

class C
  def talk
    puts "Method-grabbing test! self is #{self}"
  end
end
class D < C
end
c = C.new
meth = c.method(:talk)
puts meth.owner
meth.call
d = D.new
unbound = meth.unbind
p unbound
unbound.bind(d).call
