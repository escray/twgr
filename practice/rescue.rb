print "Enter a number: "
n = gets.to_i
begin
  result = 100 / n
rescue ZeroDivisionError
  puts "Your number didn't work. Was it zero???"
  exit
end
puts "100/#{n} is #{result}"

def open_user_file
  print "File to open: "
  filename = gets.chomp
  fh = File.open(filename)
  yield fh
  fh.close
rescue
  puts "Couldn't open your file!"
end

# open_user_file2 do |filename|
#   fh = File.open(filename)
#   yield fh
#   fh.close
# rescue
#   puts "Couldn't open your file!"
# end

open_user_file
