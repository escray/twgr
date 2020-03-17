# frozen_string_literal: true

class C
  def talk
    puts 'Hi!'
  end
end

c = C.new
c.talk

obj = Object.new
def obj.talk
  puts 'Hi!'
end
obj.talk

class Car
  def self.makes
    %w[Honda Ford Toyota Chevrolet Volvo]
  end
end

str = 'I am a string'
# class << str
#   def twice
#     self + ' ' + self
#   end
# end
#
# Traceback (most recent call last):
# practice/singleton.rb:25:in `<main>': can't define singleton (TypeError)

# def str.twice
#   self + ' ' + self
# end

# puts str.twice

class Ticket
  class << self
    def most_expensive(*tickets)
      tickets.max_by(&:price)
    end
  end
end
