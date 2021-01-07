=begin
  - create a number guessing game where there are 7 gueses and 1 number to guess between 1 and 100
  - nouns: game, number, guess, number of guesses, range, outcome
  - verbs: guess, verify
=end

class GuessingGame
  def initialize(lower, upper)
    @lower = lower
    @upper = upper
    @range = (lower..upper)
    @number = @range.to_a.sample
    @remaining_guesses = Math.log2(upper - lower).to_i + 1
    @guess = nil
  end

  def play
    loop do
      puts "You have #{@remaining_guesses} remaining guesses."
      get_guess
      decrement
      break if winner? || loser?
      evaluate_guess
    end
    display_final_message
  end

  def evaluate_guess
    system 'clear'
    puts "#{@guess} is too high." if @guess > @number
    puts "#{@guess} is too low." if @guess < @number
  end

  def winner?
    @number == @guess
  end

  def loser?
    @remaining_guesses == 0
  end

def display_final_message
  system 'clear'
  if winner?
    puts "You won! The number was #{@number}. Congrats!"
  else
    puts "You have no more guesses. You lost."
  end
end

  def get_guess
    puts "Pleae enter a number between #{@lower} and #{@upper}."
    guess = ''
    loop do
      guess = gets.chomp
      break if valid?(guess)
      puts "Invalid guess."
    end
    @guess = guess.to_i
  end

  def decrement
    @remaining_guesses -= 1
  end

  def valid?(guess)
    guess.to_i.to_s == guess && @range.cover?(guess.to_i)
  end
end

game = GuessingGame.new(501, 1500)
game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.
#
# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.
#
# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.
#
# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80
#
# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!
#
# You won!
#
# game.play
#
# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.
#
# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.
#
# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.
#
# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.
#
# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.
#
# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.
#
# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.
#
# You have no more guesses. You lost!
