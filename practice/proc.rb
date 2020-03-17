# frozen_string_literal: false

pr = proc { puts "Inside a Proc's block" }
pr.call

def call_a_proc(&block)
  block.call
end

call_a_proc { puts "I'm the block ... or Proc ... or Something." }

p = proc { |x| puts x.upcase }
%w[David Black].each(&p)

def capture_block(&block)
  puts 'Got block as proc'
  block.call
end

capture_block { puts 'Inside the block' }

p = proc { puts 'This proc argument will serve as a code block.' }
capture_block(&p)
# capture_block(&p) { puts 'This is the explicit block'}
# practice/proc.rb:25: both block arg and actual block given
# capture_block(p)
# capture_block(p.to_proc)
# practice/proc.rb:15:in `capture_block': wrong number of arguments (given 1, expected 0) (ArgumentError)

albums = {  1988 => 'Straight Outta Compton',
            1993 => 'Midnight Marauders',
            1996 => 'The Score',
            2015 => 'To Pimp a Butterfly' }
p albums[2015]

print [1988, 1996].map(&albums)
puts ''
print (1990..1999).map(&albums).compact
puts ''

class Person
  attr_accessor :name
  def self.to_proc
    proc { |person| person.name }
  end
end

d = Person.new
d.name = 'David'
j = Person.new
j.name = 'Joe'
puts [d, j].map(&Person)

print %w[david black].map(&:capitalize)
print %w[david black].map &:capitalize
print %w[david black].map { |str| str.public_send(:capitalize) }
puts ''

class Symbol
  def to_proc
    puts 'In the new Symbol#to_proc!'
    proc { |obj| obj.public_send(self) }
  end
end

puts %w[david black].map(&:capitalize)
