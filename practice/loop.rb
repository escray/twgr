n = 1
loop {
  n = n + 1
  puts n
  break if n > 9
 }

 n = 1
 loop {
   n = n + 1
   next unless n == 10
   break
  }

n = 1
while n < 11
  puts n
  n = n + 1
end
puts "Done!"

n = 1
begin
  puts n
  n = n + 1
end while n < 11
puts "Done"

n = 10
while n < 10
  puts n
end

begin
  puts n
end while n < 10

n = 1
until n > 10
  puts n
  n = n + 1
end

n = 1
n = n + 1 until n == 10
puts "We'v reach 10!"
puts n

a = 1
a += 1 until true
puts a

a = 1
begin
  a += 1
end until true
puts a

a = 1
loop { a += 1; break if true }
puts a
a = 1
loop do
  a += 1
  break if true
end
puts a

if (a,b = [3, 4])
  puts a
  puts b
end

while (a, b = nil)
  puts "this line will not execute"
end

puts a
puts b
