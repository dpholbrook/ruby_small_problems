=begin
  description:
    - generate lyrics for 99 bottles of beer

    - verses instance method
      - input is one or more numbers
      - output is lyrics for those verses NO OUTPUT IS RANGE

    - THERE IS ALSO A VERSE METHOD
    - READ THE TEST CASES!

    - lyrics im
      - no input
      - output lyrics of entire song

    rules:
      99-2
      99 bottles of beer on the wall, 99 bottles of beer.
      Take one down and pass it around, 98 bottles of beer on the wall.

      1
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.

      0
      Go to the store and buy some more, 99 bottles of beer on the wall.

    algorithm:
      - instance method takes variable inputs
      - store as array of numbers
      - verses im
        - for each number in array
          - output verse for that number



  new algorithm
    - there is a special verse for 2, 1, and 0
    - all other verses use the same pattern

    - verses
      - takes two arguments which is a range of verses
        - second parameter defaults to value assigned to first
      - iterate, generating each verse according to rules

    - verse
      - call verses with one arg

    - lyrics
      - call verses 99, 1
=end

# class BeerSong
#   def initialize(*nums)
#     @verses = nums
#   end
#
#   def output_numbers
#     @verses
#   end
#
#   def verses(*nums)
#     value = ''
#     nums.each do |verse|
#     value <<  if verse == 1
#                 "#{verse} bottle of beer on the wall, #{verse} bottle of beer.\n" \
#                 "Take it down and pass it around, no more bottles of beer on the wall.\n" \
#                 "\n" \
#               elsif verse == 0
#                 "No more bottles of beer on the wall, no more bottles of beer.\n" \
#                 "Go to the store and buy some more, 99 bottles of beer on the wall.\n" \
#                 "\n" \
#               elsif verse == 2
#                 "2 bottles of beer on the wall, 2 bottles of beer.\n" \
#                 "Take one down and pass it around, 1 bottle of beer on the wall.\n" \
#                 "\n" \
#               else
#                 "#{verse} bottles of beer on the wall, #{verse} bottles of beer.\n" \
#                 "Take one down and pass it around, #{verse - 1} bottles of beer on the wall.\n" \
#                 "\n" \
#               end
#     end
#
#     value
#   end
#
#   def verse(verse)
#     if verse == 1
#       "#{verse} bottle of beer on the wall, #{verse} bottle of beer.\n" \
#       "Take it down and pass it around, no more bottles of beer on the wall.\n"
#     elsif verse == 0
#       "No more bottles of beer on the wall, no more bottles of beer.\n" \
#       "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
#     elsif verse == 2
#       "2 bottles of beer on the wall, 2 bottles of beer.\n" \
#       "Take one down and pass it around, 1 bottle of beer on the wall.\n"
#     else
#       "#{verse} bottles of beer on the wall, #{verse} bottles of beer.\n" \
#       "Take one down and pass it around, #{verse - 1} bottles of beer on the wall.\n"
#     end
#   end
#
#   def lyrics
#     self.class.new(*((0..99).to_a.reverse)).verse
#   end
# end
#
# # BeerSong.new(99, 55, 1, 0).verses
# # BeerSong.new.lyrics
# p BeerSong.new.verses(99, 98)


class BeerSong
  DEFAULT_VERSE = "START_BEER bottles of beer on the wall, START_BEER bottles of beer.\n"\
"Take one down and pass it around, END_BEER bottles of beer on the wall.\n"

  VERSE0 = "No more bottles of beer on the wall, no more bottles of beer.\n"\
  "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

  VERSE1 = "1 bottle of beer on the wall, 1 bottle of beer.\n"\
"Take it down and pass it around, no more bottles of beer on the wall.\n"

  VERSE2 = "2 bottles of beer on the wall, 2 bottles of beer.\n"\
"Take one down and pass it around, 1 bottle of beer on the wall.\n"

  @@song = Hash.new(DEFAULT_VERSE)
  @@song[0] = VERSE0
  @@song[1] = VERSE1
  @@song[2] = VERSE2

  def verses(starting_verse, ending_verse = starting_verse)
    verses = []
    starting_verse.downto(ending_verse) do |verse|
      verses << @@song[verse].gsub("START_BEER", verse.to_s)
                             .gsub("END_BEER", (verse - 1).to_s)
                             require 'pry'; binding.pry
    end
    verses.join("\n")
  end

  def verse(single_verse)
    verses(single_verse)
  end

  def lyrics
    verses(99,0)
  end
end

# p BeerSong.new.verses(99,98)

expected = <<-SONG
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
  SONG

p expected
