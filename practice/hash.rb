hash = {red: "ruby", white: "diamond", green: "emerald"}
hash.each_with_index { |(key, value), i|
  puts "Pair #{i} is: #{key}/#{value}"
}

state_hash = { "Connecticut" => "CT",
              "Delaware"    => "DE",
              "New Jersey"  => "NJ",
              "Virginia"    => "VA" }
print "Enter the name of a state: "
state = gets.chomp
abbr = state_hash[state]
puts "The abbreviation is #{abbr}"
