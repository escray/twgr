def divide_by_user_input
  print "Enter a number: "
  n = gets.to_i
  # DEBUG:
  # binding.irb
  begin
    result = 100 / n
  rescue ZeroDivisionError
    puts "Your number didn't work. Was it zero???"
    exit
  end
  puts "100/#{n} is #{result}"
end

def open_user_file
  print "File to open: "
  filename = gets.chomp
  # DEBUG:
  # binding.irb
  begin
    fh = File.open(filename)
  rescue
    puts "Couldn't open your file!"
    return
  end
  # yield fh
  fh.close
end

# open_user_file2 do |filename|
#   fh = File.open(filename)
#   yield fh
#   fh.close
# rescue
#   puts "Couldn't open your file!"
# end
divide_by_user_input
open_user_file
