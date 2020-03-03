class Ticket
  attr_reader :venue, :date, :price
  attr_writer :price

  def initialize(venue, date)
    @venue = venue
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
