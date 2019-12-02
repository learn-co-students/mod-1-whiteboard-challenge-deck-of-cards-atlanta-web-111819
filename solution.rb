class Deck
    attr_reader :cards

    def initialize
        @cards = []
        ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
        suits = ['Hearts', 'Spades', 'Clubs', 'Diamonds']

        suits.each do |suit|
            ranks.each do |rank|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        card = @cards[rand(@cards.length)]
        @cards.delete(card)
        card
    end
end

class Card
    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end
