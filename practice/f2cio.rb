puts "Reading Fahrenheit temperature value from data file ..."
num = File.read("temp.dat")
fahrenheit = num.to_i
celsium = (fahrenheit - 32) * 5 / 9
fh = File.new("temp.out", "a")
fh.puts celsium
fh.close
puts "Saving result to output file 'temp.out'"
