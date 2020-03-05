class Person
  PEOPLE = []
  attr_reader :name, :hobbies, :friends
  attr_accessor :first_name, :middle_name, :last_name
  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end
  def has_hobby(hobby)
    @hobbies << hobby
  end
  def has_friend(friend)
    @friends << friend
  end
  def Person.method_missing(m, *args)
    method = m.to_s
    if method.start_with?("all_with_")
      attr = method[9..-1]
      if Person.public_method_defined?(attr)
        PEOPLE.find_all do |person|
          person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end

  def species
    "Homo sapiens"
  end

  def set_name(string)
    puts "Setting person's name..."
    @name = string
  end

  def get_name
    puts "Returning the person's name..."
    @name
  end

  def whole_name
    n = first_name + " "
    n << "#{middle_name} " if middle_name
    n << last_name
  end
end

class Rubyist < Person

end

joe = Person.new("Joe")
puts joe.get_name

david = Rubyist.new("David")
puts david.species

j = Person.new("John")
p = Person.new("Paul")
g = Person.new("George")
r = Person.new("Ringo")
e = Person.new("Eric B.")

e.has_friend(r)
e.has_hobby("cycling")
r.has_hobby("drums")

j.has_friend(p)
j.has_friend(g)
g.has_friend(p)
r.has_hobby("rings")

Person.all_with_friends(p).each do |person|
  puts "#{person.name} is friends with #{p.name}"
end
Person.all_with_hobbies("rings").each do |person|
  puts "#{person.name} is into rings"
end
Person.all_with_hobbies("cycling").each do |person|
  puts "#{person.name} is into cycling"
end

david.first_name = "David"
david.last_name = "Black"
puts "\nDavid's whole name: #{david.whole_name}"
david.middle_name = "Alan"
puts "David's whole name: #{david.whole_name}"
