# frozen_string_literal: true

path = '/Users/escray/Study/professional/SourceCode/Ruby/twgr/practice/record'
full_text = File.read(path)
lines_of_text = File.readlines(path)

p full_text
p lines_of_text

File.open(path, 'w') do |f|
  f.print('Hello')
  f.syswrite(' there!')
end
puts File.read(path)

f = File.new(path, 'w')
f.puts 'David A. Black, Rubyist'
f.close

puts File.read(path)

f = File.new(path, 'a')
f.puts 'Jeo Leo III, Rubyist'
f.close

puts File.read(path)
