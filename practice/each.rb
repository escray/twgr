array = [1,2,3,4,5]
array.each {|e| puts "The block just got handed #{e}."}

class Array
  def my_each
    c = 0
    until c == size
      yield self[c]
      c+=1
    end
    self
  end
  def my_map
    c = 0
    acc = []
    until c == size
      acc << (yield self[c])
      c += 1
    end
    acc
  end
  def your_map
    acc = []
    my_each { |e| acc << (yield e) }
    acc
  end
end

array.my_each {|e| puts "The block just got handed #{e}."}

names = ["David", "Alan", "Black"]
puts names.map {|name| name.upcase }
puts names.my_map { |name| name.upcase }
puts names.your_map{ |name| name.upcase }
