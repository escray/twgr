class Dog
  attr_reader :age, :dog_years
  puts self
  def dog_years=(years)
    puts self
    @dog_years = years
  end
  def age=(years)
    @age = years
    puts self
    self.dog_years = years * 7
  end
  private :dog_years=
end

rover = Dog.new
rover.age = 10
puts "Rover is #{rover.dog_years} in dog years"
