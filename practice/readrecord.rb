# frozen_string_literal: true

path = '/Users/escray/Study/professional/SourceCode/Ruby/twgr/practice/members.txt'
count = 0
total_ages = File.readlines(path).inject(0) do |total, line|
  count += 1
  fields = line.split
  age = fields[3].to_i
  total + age
end
puts "Average age of group: #{total_ages / count}."

count = 0
total_ages = File.open(path) do |f|
  f.inject(0) do |total, line|
    count += 1
    fields = line.split
    age = fields[3].to_i
    total + age
  end
end
puts "Average age of group: #{total_ages / count}."
