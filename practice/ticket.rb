class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
  attr_reader :venue, :date
  attr_accessor :price

  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end

  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end

    @date = date
  end

  def date=(date)
    year, month, day = date.split('-')
    if year.to_i < 100
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    end
    @date = date
  end

  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed"
    end
  end
end

th = Ticket.new("Town Hall", "2013-11-12")
cc = Ticket.new("Convention Center", "2014-12-13")
fg = Ticket.new("Fairgrounds", "2015-10-11")
th.price = 12.55
cc.price = 10.00
fg.price = 18.00
highest = Ticket.most_expensive(th, cc, fg)
puts "The highest-priced ticket is the one for #{highest.venue}"

Ticket::VENUES << "High School Gym"

puts Ticket::VENUES
