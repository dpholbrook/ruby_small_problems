class Card
  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}
  include Comparable
  attr_reader :rank, :suit, :true_rank

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}."
  end

  protected

  def true_rank
    if (1..10).cover?(rank)
      return rank
    else
      return VALUES[rank]
    end
  end

  private

  def <=>(other)
    true_rank <=> other.true_rank
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def draw
    reset if @cards.empty?
    @cards.pop
  end

  private

  def reset
    @cards = []

    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.
