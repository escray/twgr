string = "My phone number is (123) 555-1234."
phone_re = %r{\((\d{3})\)\s+(\d{3})-(\d{4})}
m = phone_re.match(string)
unless m
  puts "There was no match-sorry"
  exit
end
print "The whole string we started with: "
puts m.string
print "The entire part of the string that matched: "
puts m[0]
puts "The three captures: "
3.times do |index|
  puts "Capture ##{index+1}: #{m.captures[index]}"
end
puts "Here's another way to get at the first capture: "
print "Capture #1: "
puts m[1]
puts $2
print "The part of the string before the part matched was: "
puts m.pre_match
print "The part of the string after the part matched was: "
puts m.post_match
print "The second capture began at character "
puts m.begin(2)
print "The third capture ended at character "
puts m.end(2)
puts string.slice(m.begin(3), m.end(3) - m.begin(3))

/((a)((b)c))/.match("abc")
puts $1
puts $2
puts $3
puts $4
puts $~

re = %r{(?<first>\w+)\s+((?<middle>\w\.)\s+)(?<last>\w+)}
m = re.match("David A. Black")
puts m[:first]
puts m[:last]
puts m.named_captures

re = %r{(?<first>\w{3})\s+((?<last>\w{3}),?\s?)(?<suffix>\w+\.?)?}

m = re.match("Joe Leo III")
p m.named_captures
m = re.match "Joe Leo, Mrs."
puts m[:last]
puts m[:suffix]
p m.named_captures

name = "Zhao Rui@escray"
re = %r{(?<first>\w{4})\s+((?<last>\w{3}),?\s?@?)(?<nickname>\w+\.?)?}
m = re.match(name)
puts m.named_captures

comment_regexp = /^\s*#/
puts comment_regexp.match("    # Pure comment!")[0]
puts comment_regexp.match?(" x = 1 # Code plus comment!")

str = "123 456. 789"
m = /\d+(?=\.)/.match(str)
puts m[0]

re = /(?<=David )BLACK/
puts "David BLACK".match(re)[0]
re = /(?<!David )BLACK/
puts "David  BLACK".match?(re)

str = "abc def ghi"
m = /(abc) (?:def) (ghi)/.match(str)
p m

re = /(a)?(?(1)b|c)/

p re.match("ab")
p re.match("b")
p re.match("c")

re = /(a)?(?(1)a|c)/

p re.match("ac")

re = /(?<first>a)?(?(<first>)b|c)/

str = "This (including\nWhat's in parents\n) takes up three lines"
print str
m = /\(.*?\)/m.match(str)
puts ''
p m[0]

re = /\((\d{3})\)\s(\d{3})-(\d{4})/x

str = "Collections Report: 04/15/2018\nInitech owes us $34,500. They will remit payment on 5/15.\nU-North owes $96,000 and has not responded to our notice.\nWeyland-Utani Corp has a balance of $25,000 dating back to 1979."

re = /(^[\w-]+).+/
p str.match(re)

re = /(\d+)/m
p str.match(re)
