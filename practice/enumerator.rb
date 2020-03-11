e = Enumerator.new do |y|
  y << 1
  y << 2
  y << 3
end

ee = Enumerator.new do |y|
  puts "Starting up the block!"
  (1..3).each { |i| y << i}
  puts "Existing the block!"
end

p e.to_a
p e.map {|x| x * 10}
p e.select {|x| x > 1}
p e.take(2)

p ee.to_a
p ee.select {|x| x > 2}

a = [1,2,3,4,5]
eee = Enumerator.new do |y|
  total = 0
  until a.empty?
    total += a.pop
    y << total
  end
end

p eee.take(3)
p a
p eee.to_a
p a

def give_me_an_array(array)
  array << "new element"
end
