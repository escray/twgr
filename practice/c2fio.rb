puts "Reading celsius temperature value from data file ..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = celsius * 9 / 5 + 32
fh = File.new("temp.out", "a")
fh.puts fahrenheit
fh.close
puts "Saving result to output file 'temp.out'"
