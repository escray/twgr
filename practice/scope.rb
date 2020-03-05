a = 0
def t
  puts "Top level method t"
end

class C
  a = 1
  def self.x
    a = 2
    puts "C.x; a = #{a}"
  end

  def m
    a = 3
    puts "C#m; a = #{a}"
  end

  def n
    a = 4
    puts "C#n; a = #{a}"
  end

  def local_a
    a = 2
    puts a
  end
  puts a
  puts "Class scope: a = #{a}"
end


C.x
c = C.new
c.m
c.n
c.local_a

puts "Top level: a = #{a}"
