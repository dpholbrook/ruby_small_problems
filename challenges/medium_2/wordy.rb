=begin
  - take a word problem and return an integer answer

  - input is string of 1 to 3 numbers and one to two word operations
  - first operation is computed before the next is performed
  - ArgumentError is raised if proper syntax is not detected

  algorithm:
    - scan string for positive and negative numbers and operations
    - array is
      - number operation number
      - or
      - number operation number operation number

    - return value after first operation
    - if second operation
      - use case statement to reutrn second value after second operation

    - validate @str
      - if


=end

class WordProblem
  attr_reader :str

  def initialize(str)
    @str = normalize(str)
  end

  def normalize(str)
    str.scan(/-*\d+|multiplied|plus|minus|divided/)
  end

  def answer
    raise ArgumentError if @str.size != 3 && @str.size != 5

    num_1 = @str[0].to_i
    operation = @str[1]
    num_2 = @str[2].to_i

    result =
    case operation
    when 'plus' then num_1 + num_2
    when 'minus' then num_1 - num_2
    when 'divided' then num_1 / num_2
    when 'multiplied' then num_1 * num_2
    end

    return result if @str.size == 3

    operation_2 = @str[3]
    num_3 = @str[4].to_i

    case operation_2
    when 'plus' then result + num_3
    when 'minus' then result - num_3
    when 'divided' then result / num_3
    when 'multiplied' then result * num_3
    end
  end
end

p WordProblem.new('What is 123 plus 45678?').str
