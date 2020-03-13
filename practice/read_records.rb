# frozen_string_literal: true

path = '/Users/escray/Study/professional/SourceCode/Ruby/twgr/practice/records.txt'
File.open(path) do |f|
  while record = f.gets
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}."
  end
end

File.open(path) do |f|
  f.each do |record|
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}"
  end
end

puts File.size(path)
puts FileTest.size(path)
puts File::Stat.new(path).size
