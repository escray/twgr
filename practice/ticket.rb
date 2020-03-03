class Ticket
  def initialize(venue, date, price)
    puts "Creating a new ticket!"
    @venue = venue
    @date = date
    @price = price
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

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end

  def event
    "Can't really be specified yet ..."
  end
end

th = Ticket.new("Town Hall", "2013-11-12", 63.00)
cc = Ticket.new("Convention Center", "2014-12-13", 64.00)
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}"
puts "The second is for an event on #{cc.venue} event on #{cc.date}"
