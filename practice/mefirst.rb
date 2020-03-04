module MeFirst
  def report
    puts "Hello from module!"
  end
end
module MeLast
end
class Person
  include MeLast
  prepend MeFirst
  def report
    puts "Hello from class!"
  end
end
p = Person.new
p.report
print Person.ancestors
