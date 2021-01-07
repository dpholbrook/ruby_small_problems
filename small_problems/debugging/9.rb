=begin

There are a couple of things that are not working. First, the winning number
should be between 1 and 10 but does not appear to be. Also, you can guess as
many times as you want. So, it seems that neither parameter is really doing
what it is supposed to: limiting the range of possible numbers and limiting
the number of guesses you can take.

In examining the code, everything looks good until we get to the recursive
call at the end. There is no need for it. Our loop will work until we have maxed
out our guesses and if we guess right, we are notified that we win.

The recursive call runs the whole method all over again, picking an entirely new
winning number at the end of each loop. So, the clue as to whether or not you
are high or low becomes irrelevant. Eventually, you may be able to guess the
number but it would basically be a 1 in 10 shot each time.

Upon commenting out the recursive call, it appears that the code is working.

Another improvement that can be made is to end the game after a correct guess
by adding a break keyword to exit the loop if the condition guess == winning_number
is met.
=end


def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  p winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      #guess_number(max_number, max_attempts)
    end
  end
  puts 'Thanks for playing!'
end

guess_number(10, 3)
