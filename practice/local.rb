def say_goodbye
  x = "Goodbye"
  puts x
end

def start_here
  x = "Hello"
  puts x
  say_goodbye
  puts "Let's check whether x remained the same: "
  puts x
end

start_here

def say_goodbye
  str = "Hello"
  abc = str
  puts abc
  str.replace("Goodbye")
  puts str
  puts abc
end

say_goodbye

str = "Hello"
abc = str
str = "Goodbye"
puts str
puts abc

def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"
change_string(s)
puts s

s = "Origianl string content!"
change_string(s.dup)
puts s

s.freeze
# change_string(s)
change_string(s.dup)
puts s

numbers = ["one", "two", "three"]
numbers.freeze
# numbers[2] = "four"
numbers[2].replace("four")
p numbers
