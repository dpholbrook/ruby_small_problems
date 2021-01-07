=begin
  - an array of cards containing card objects is created
  - each card object has a rank and suit state
  - convert the rank of each card to its real rank
  - sort the array of cards based on converted rank

=end

class Card
  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}
  include Comparable
  attr_reader :rank, :suit, :true_rank

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def true_rank
    if (1..10).cover?(rank)
      return rank
    else
      return VALUES[rank]
    end
  end

  def to_s
    "#{@rank} of #{@suit}."
  end

  def <=>(other)
    true_rank <=> other.true_rank
  end
end

# class Card
#   include Comparable
#   attr_reader :rank, :suit
#
#   VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }
#
#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
#
#   def to_s
#     "#{rank} of #{suit}"
#   end
#
#   def value
#     VALUES.fetch(rank, rank)
#   end
#
#   def <=>(other_card)
#     value <=> other_card.value
#   end
# end


cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')
#
cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8
