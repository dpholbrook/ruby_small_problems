# require 'pry-byebug'

class House

  def self.recite
    new.recite
  end

  # def recite
  #   generate_paragraph
  # end
  #
  # def generate_paragraph
  #   "This is #{generate_sentences}.\n\n"
  # end
  #
  # def generate_sentences
  #   line = -1
  #
  #   string = ""
  #
  #   while line >= -(lines.size)
  #
  #     string << lines[line][0]
  #
  #     sub_line = line
  #
  #     while sub_line < -1
  #       string << "#{lines[sub_line][1]} #{lines[sub_line += 1][0]} \n"
  #     end
  #
  #     line -= 1
  #   end
  #
  #   string
  # end

  def recite
    result = ''

    lines.each_with_index do |line, idx|
      if idx == 0
        result << "This is #{line[0]}.\n\n"
      else
        result << "This is #{line[0]}\n"

        counter = idx
        loop do
          # binding.pry
          result << "#{lines[counter][1]} #{lines[counter -=1][0]}"
          if counter == 0
            result << ".\n\n"
            break
          else
            result << "\n"
          end
        end

      end
    end

    result[0..-2]
  end



  private

  def lines
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ].reverse
  end
end

# p House.recite

=begin

each line in the array of lines represents a paragraph

iterate through the array
each iteration is a paragraph

starts with this is, then loops back down to first sentence

on first iteration, its just the house that jack built
after that, its this is plus the first element, new line, second element


starting paragraph is 1

generate paragraph
this is plus paragraph
incriment paragraph




generate paragraph
Starts with This is
generate sentences
Ends with '.' and double new line

generate sentences
iterates through array items

first line - this is plus line

next line is line +1 concatenated with line + 2


  - create House.recite method


This is [-1][0]

This is [-2][0]
[-2][1] [-1][0]

This is [-3][0]
[-3][1] [-2][0]
[-2][1] [-1][0]

This is [-4,0]
[-4][1] + [-3][0]
[3][1] + [-2][0]
[-2][1][-1][0]

- iterating backwards from the end of the lines array,

- iterate backwards through elements from -1 to -12 with line
  - for each element,
    - output 'This is' + [line][0]
    - output [line][1] + [line -= 1][0]
  - do this until line = -1




=end
