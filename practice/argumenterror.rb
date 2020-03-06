def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

begin
  fussy_method
rescue ArgumentError
  puts "That was not an acceptable number!"
end
