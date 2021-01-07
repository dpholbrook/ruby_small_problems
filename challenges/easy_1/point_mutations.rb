=begin
  input: two strings
  output: integer

  rules:
    - integer returned is the number of times that each character in the strings is different
    - return 0 if strings are empty or the same
    - if one string is longer, test only up to size of smaller string
    - if testing only part of string, don't mutate the string

  algorithm:
    - define DNA class to take a string argument
      - initialize dna instance variable to string
      - define hamming_distance instance method to take a string argument
        - initalize hamming_distance
        - convert strings to arry of chars
        - iterate through the shorter string with index
          - if values of both chars are the same then incriment distance
=end

# class DNA
#   def initialize(str)
#     @strand = str
#   end
#
#   def hamming_distance(str)
#     distance = 0
#
#     shorter = @strand.size > str.size ? str : @strand
#     longer = shorter == @strand ? str : @strand
#
#     shorter.chars.each_with_index do |char, idx|
#       distance += 1 if char != longer.chars[idx]
#     end
#
#     distance
#   end
# end

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(strand_2)
    distance = 0

    shorter, longer = [@strand, strand_2].sort_by(&:size)

    shorter.chars.each_with_index do |char, idx|
      distance += 1 if char != longer.chars[idx]
    end

    distance
  end
end

p DNA.new('ACT').hamming_distance('GAT')
