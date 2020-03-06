x = 101
if x > 10 then puts x end

if x > 10; puts x; end

unless x > 100
  puts "Small number!"
else
  puts "Big number!"
end

if x <= 100
  puts "Small number!"
else
  puts "Big number!"
end

puts "Big number!" if x > 100

puts "Big number!" unless x <= 100

def print_conditionally
  print "Enter an integer: "
  n = gets.to_i
  if n > 0
    puts "Your number is positive."
  elsif n < 0
    puts "Your number is negative."
  else
    puts "Your number is zero."
  end
end

print_conditionally

if nil; puts "Ain't gonna happen."; end

x = 1
if x < 0
  "negative"
elsif x > 0
  "positive"
else
  "zero"
end
