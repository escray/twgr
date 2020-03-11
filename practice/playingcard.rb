class PlayingCard
  SUITS = %w{clubs diamonds hearts spades}
  RANKS = %w{2 3 4 5 6 7 8 9 10 J Q K A}
  class Deck
    def cars
      @cards.to_enum
    end
    def initialize(n=1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

deck = PlayingCard::Deck.new
#deck.cards << "Joker!!"
#practice/playingcard.rb:20:in `<main>': undefined method `cards' for #<PlayingCard::Deck:0x00007fa8a083df88> (NoMethodError)
puts deck.cards.size
