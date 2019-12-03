require 'pry'


class Deck

    attr_reader :cards
    @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]


    def initialize
        @cards = []
        create_deck
        # binding.pry
    end

    def create_deck
        @@suits.each{|sts| @@rank.each{|rnk| self.cards << Card.new(sts, rnk)}}
    end
        

    def choose_card
        return self.cards.delete_at(rand(self.cards.length))
    end

end

class Card

    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

end

binding.pry


