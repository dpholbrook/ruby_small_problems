=begin

We get a type error because when we call sum on remaining_cards we are trying
to add numbers and symbols.
We can fix this be saving the return value of the call to map which will give
us an array of the values of the remaining cards.

The sum is lower than it should be because every time we deal, we are popping
cards off of each suit because eash suit is referencing the same array object.
We need for the suits to reference different array objects which can be
accomplished using clone.

=end

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit
player_cards = []
deck.keys.each do |suit|
  cards = deck[suit] # cards is array of cards for each suit
  cards.shuffle! # cards for each suit are shuffled
  player_cards << cards.pop # one random card from each suit is dealt to the player
end

# Determine the score of the remaining cards in the deck

# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map! do |card| # we can mutate the array of remaining cards in each suit to their values in order to sum them on line 39
#     score(card)
#   end

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  suit_score = remaining_cards.map do |card| # alternatively, we could save the return value of the call to map (an array of scores) to a local variable suit_score and sum all of the suits scores
    score(card)
  end

  sum += suit_score.sum
end

total_sum  = 4 * [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].sum
player_sum = player_cards.map { |card| score(card) }.sum

puts "Total sum: #{total_sum}"
puts "Player sum: #{player_sum}"
puts "Sum: #{sum}"

puts(sum == total_sum - player_sum) #=> false
