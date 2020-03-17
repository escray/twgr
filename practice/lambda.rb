# frozen_string_literal: true

lam = ->(x) { p x }
puts lam
lam.call(1)
# lam.call
# ArgumentError
# lam.call(1, 2, 3)
# ArgumentError

def return_test
  l = -> { return }
  l.call
  puts 'still here!'
  p = proc { return }
  p.call
  puts "You won't see this message!"
end
return_test
