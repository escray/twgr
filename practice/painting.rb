class Painting
  include Comparable
  attr_reader :price, :year
  def initialize(price, year)
    @price = price
    @year = year
  end
  def to_s
    "My price is $#{price} at #{year}"
  end
  def <=>(other_painting)
    self.price <=> other_painting.price
  end

end

paintings = 5.times.map { Painting.new(rand(100..900), rand(1800..2000)) }
puts "5 randomly generated Painting prices:"
puts paintings
puts "Same paintings, sorted:"
puts paintings.sort
puts "Same paintings, year_sort"
year_sort = paintings.sort do |a, b|
  a.year <=> b.year
end
puts year_sort

pa1 = Painting.new(100, 1989)
pa2 = Painting.new(200, 1991)
pa3 = Painting.new(300, 2000)

puts pa1 > pa2
puts pa1 < pa2
puts pa2.between?(pa1, pa3)

cheapest, priciest = [pa1, pa2, pa3].minmax
puts Painting.new(1000, 2000).clamp(cheapest, priciest).object_id == priciest.object_id
