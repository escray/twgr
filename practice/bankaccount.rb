module InterestBearing
  def calculate_interest
    puts "Placeholder! We're in module InterestBearing."
  end
end
class BankAccount

  def calculate_interest
    puts "Placeholder! We're in class BankAccount."
    puts "And We're overriding the calculate_interest method ..."
    puts "which was defined in the InterestBearing module."
  end
  include InterestBearing
end

account = BankAccount.new
account.calculate_interest
