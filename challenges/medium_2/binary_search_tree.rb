=begin
Bst class
  - starting number passed in when object initialized
  - data instance method
    - returns starting number
  - insert instance method
    - if less than left is left
    - if more than right, is right
  - left instance method

  - each instance method
    - iterates on all ordered numbers

  - all numbers are stored in an array
    - how are they sorted?



we have a starting number
and left and right are nil
a number is inserted
if that number is less than start
  - if left is nil
    - then left is now a new bst object with that value
  - else insert taht number into the left bst obect
elsif it is right
  - if right is nil
    - right is now bst object with that value
  - else insert value into right bst object


that can be left or right of that number
if it is equal, it is left and right

then, another number is added

                    4
                  /  \

each
  - if left
    - call on left
  - else

bst object
  @data = 4

 if inserted number is less, then it is left



=end

class Bst
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(number)
    if number < @data
      if @left
        @left.insert(number)
      else
        @left = Bst.new(number)
      end
    elsif number > @data
      if @right
        @right.insert(number)
      else
        @right = Bst.new(number)
      end
    else
      @left = Bst.new(number)
      @right = Bst.new(number)
    end
  end

  def each
    @left.each if @left
    @right.each if @right
    yield @data if block_given? 

    # if @left
    #   @left.each
    # else
    #   yield @data
    # end
    #
    # if @right
    #   @right.each
    # else
    #   yield @data
    # end
  end
end
