module TextHandler
  class InvalidLineError < StandardError
  end
end

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
# divide_by_user_input
# open_user_file

def line_from_file(filename, substring)
  fh = File.open(filename)
  begin
    line = fh.gets
    raise TextHandler::InvalidLineError unless line.include?(substring)
    return line
  rescue TextHandler::InvalidLineError
    puts "Invalid line!"
    raise
  ensure
    fh.close
  end
  return line
end

class MyNewException < Exception
end

begin
  puts "About to raise exception..."
  raise MyNewException
rescue MyNewException => e
  puts "Just raised an exception: #{e}"
end



line_from_file("/Users/escray/Study/professional/SourceCode/Ruby/twgr/practice/rescue.rb", "den")
