=begin
  description:
    - program that coputes scrabble score for a word

  input:
    - string (one word, empty string, or whitespace, or nil)
  output:
    - integer

  rules:
    Letter                           Value
    A, E, I, O, U, L, N, R, S, T       1
    D, G                               2
    B, C, M, P                         3
    F, H, V, W, Y                      4
    K                                  5
    J, X                               8
    Q, Z                               10

    - empty string and whitespace chars and nil score zero
    - case insensitive
    - instance and class method for score

  algorithm:
    - valid string?
      - if string is empty, nil, or contains white space, then it is invalid

    - score
      - split string into array of chars, lookup char, incriment score
=end

# class Scrabble
#   SCORES = {
#     %w(a e i o u l n r s t) => 1,
#     %w(d g) => 2,
#     %w(b c m p) => 3,
#     %w(f h v w y) => 4,
#     %w(k) => 5,
#     %w(j x) => 8,
#     %w(q z) => 10,
#   }
#
#   def initialize(str)
#     @word = str
#   end
#
#   def invalid_string?
#     @word == nil || @word.empty? || @word.match(/\s/)
#   end
#
#   def score
#     return 0 if invalid_string?
#
#     score_count = 0
#
#     @word.downcase.chars.each do |char|
#       SCORES.each { |k, v| score_count += v if k.include?(char) }
#     end
#
#     score_count
#   end
#
#   def self.score(str)
#     Scrabble.new(str).score
#   end
# end

# refactored:

class Scrabble
  SCORES = {
    'aeioulnrst' => 1,
    'dg' => 2,
    'bcmp' => 3,
    'fhvwy' => 4,
    'k' => 5,
    'jx' => 8,
    'qz' => 10,
  }

  def initialize(str)
    @word = str
  end

  def score
    return 0 if @word.nil?

    score_count = 0

    @word.downcase.chars.each do |char|
      SCORES.each { |k, v| score_count += v if k.include?(char) }
    end

    score_count
  end

  def self.score(str)
    new(str).score
  end
end
