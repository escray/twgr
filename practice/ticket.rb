class Ticket
  def initialize(venue, date)
    puts "Creating a new ticket!"
    @venue = venue
    @date = date
  end

  def venue
    @venue
  end

  def date
    @date
  end

  def price
    @price
  end

  def price=(amount)
    @price = amount
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end

  def event
    "Can't really be specified yet ..."
  end
end

th = Ticket.new("Town Hall", "2013-11-12")
th.price=(63.00)
cc = Ticket.new("Convention Center", "2014-12-13")
cc.price= 64.00
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}"
puts "The ticket costs $#{"%.2f" % th.price}"
th.price=(72.50)
puts "Whoops -- it just went up. It now costs $#{"%.2f" % th.price}."
puts "The second is for an event on #{cc.venue} event on #{cc.date}"
