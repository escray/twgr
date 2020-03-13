p "test 1 2 3 testing 4 5 6".scan(/\d/)

str = "Leopold Auer was the teacher of Jascha Heifetz."
violinists = str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/)
p violinists

violinists.each do |fname, lname|
  puts "#{lname}'s first name was #{fname}."
end

str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/) do |fname, lname|
  puts "#{lname}'s first name was #{fname}."
end

"one two three".scan(/\w+/) {|n| puts "Next number: #{n}"}

require 'strscan'

ss = StringScanner.new("Testing string scanning")
puts ss.scan_until(/ing/)
puts ss.pos
puts ss.peek(7)
p ss.unscan
puts ss.pos
puts ss.skip(/Test/)
puts ss.rest

p "Ruby".split(//)
line = "first_name=david;last_name=black;country=use"
record = line.split(/=|;/)
p record

data = []
record = Hash[*line.split(/=|;/)]
p record
data.push(record)
p data

p "a,b,c,d,e".split(/,/, 3)

p "typigraphical error".sub(/i/, "o")

p "capitalize the first vowel".sub(/[aeiou]/) { |s| s.upcase }

p "capitalize every word".gsub(/[aeiou]/) { |s| s.upcase }
p "capitalize every word".gsub(/\b\w/) { |s| s.upcase }

p "aDvid".sub(/([a-z])([A-Z])/, '\2\1')

p "double every word".gsub(/\b(\w+)/, '\1 \1')

p /(abc)/.match("abc")
p $1
p $2
p "aDvid".sub(/([a-z])([A-Z])/, "#{$2}#{$1}")
p $1
p $2

p ["USA", "UK", "France", "Germany"].grep(/[a-z]/)
p ["USA", "UK", "France", "Germany"].select { |c| /[a-z]/ === c }
p ["USA", "UK", "France", "Germany"].grep(/[a-z]/) {|c| c.upcase }
p [1,2,3].grep(/1/)
p ["1",2,3].grep(/1/)

print "Continue? (y/n)"
answer = gets
case answer
when /^y/i
  puts "Great!"
when /^n/i
  puts "Bye!"
  exit
else
  puts "Huh?"
end
