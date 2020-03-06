def args_unleashed(a, b=1, *c, d, e)
  puts "Arguments:"
  p a, b, c, d, e
end

def block_args_unleashed
  yield(1,2,3,4,5)
end

block_args_unleashed do |a, b=1, *c, d, e|
  puts "Arguments:"
  p a, b, c, d, e
end

def block_scope_demo
  x = 100
  1.times do
    puts x
  end
end

def block_scope_demo_2
  x = 100
  1.times do
    x = 200
  end
  puts x
end

def block_local_parameter
  x = 100
  [1,2,3].each do |x|
    puts "Parameter x is #{x}"
    x = x + 10
    puts "Reassigned to x in block; it's now #{x}"
  end
  puts "Outer x is still #{x}"
end

block_scope_demo
block_scope_demo_2
block_local_parameter
