class Ticket
  def initialize(venue)
    puts "Creating a new ticket!"
    @venue = venue
  end

  def venue
    @venue
  end

  def date
    @date
  end

  def date=(date)
    year, month, day = date.split('-')
    if year.to_i < 100
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    end
    @date = date
  end

  def price
    @price
  end


  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed"
    end

  end

  def discount(percent)
    if (percent * 100).to_i == percent * 100 && percent <= 100
      @price = @price * (100 - percent) / 100.0
    else
      puts "The discount seems to be malformed"
    end

  end

  def event
    "Can't really be specified yet ..."
  end
end

th = Ticket.new("Town Hall")
th.date = "2013-11-12"
th.price=(63.00)
cc = Ticket.new("Convention Center")
cc.date = "2014-12-13"

puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}"
puts "The ticket costs $#{"%.2f" % th.price}"
th.price=(72.50)
puts "Whoops -- it just went up. It now costs $#{"%.2f" % th.price}."

cc.price= 64.00
puts "The second is for an event on #{cc.venue} event on #{cc.date}"
puts "The ticket for #{cc.venue} has been discounted 15% to #{th.discount(15)}"
