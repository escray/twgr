# frozen_string_literal: true

path = '/Users/escray/Study/professional/SourceCode/Ruby/twgr/practice/hits.txt'
year_hit = {}
File.open(path) do |f|
  f.each do |line|
    album, name, year = line.chomp.split('/')
    puts "\"#{album},\" performed by #{name}, reached #1 in #{year}"

    if year_hit.key?(year)
      year_hit[year] += 1
    else
      year_hit[year] = 1
    end
  end
end

puts year_hit
year = year_hit.key(year_hit.values.max)
min, max = year_hit.keys.minmax
puts "#{year} was the best year for hit music between #{min} and #{max}"
