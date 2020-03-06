class Temperature
  def Temperature.c2f(celsius)
    celsius * 9.0 / 5 + 32
  end
  def Temperature.f2c(fahrenheit)
    (fahrenheit - 32) * 5 / 9.0
  end
  def Temperature.now
    rand(0..100)
  end
end

puts Temperature.c2f(100)
puts Temperature.f2c(100)

celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
fahrenheit = Temperature.now
puts "The temperature is now: #{fahrenheit} degree Fahrenheit."

celsius.each do |c; fahrenheit|
  fahrenheit = Temperature.c2f(c)
  puts "#{c}\t{fahreneheit}"
end
puts fahrenheit

puts "Celsius\tFahrenheit"
for c in celsius
  fahrenheit = Temperature.c2f(c)
  puts "#{c}\t#{fahrenheit}"
end
puts fahrenheit
