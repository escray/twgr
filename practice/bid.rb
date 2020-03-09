class Bid
  include Comparable
  attr_accessor :estimate
  def <=>(other_bid)
    if self.estimate < other_bid.estimate
      -1
    elsif self.estimate > other_bid.estimate
      1
    else
      0
    end
  end
  # self.estimate <=> other_bid.estimate
end

bid1 = Bid.new
bid2 = Bid.new
bid1.estimate = 100
bid2.estimate = 105
puts bid1 < bid2
