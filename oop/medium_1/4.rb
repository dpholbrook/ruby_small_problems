=begin
  rules:
    - three postion buffer with nil values

    algorithm:
      - init buffer of nil values
      - init next position and oldest instance variables to 0

      - enqueue
        - buffer[next potition] = value passed in
        - increment next position by 1
        - if there are no nil values then replace object in next postino with new value and increment oldest by 1

      - dequeue
        - if vlaue at oldest position == nil, do not incriment oldest position
        - assign oldest postinon to local variable
        - assign oldest position to nil
        - incriment oldest postion by 1
        - return local variable

      - increment method
        - incriment by one and make circular
=end

class CircularQueue
  attr_reader :buffer

  def initialize(max_size)
    @buffer = [nil] * max_size
    @next_position = 0
    @oldest_position = 0
  end

  def enqueue(value)
    unless @buffer[@next_position] == nil
      @oldest_position = increment(@oldest_position)
    end
      @buffer[@next_position] = value
      @next_position = increment(@next_position)
  end

  def dequeue
    return nil if @buffer[@oldest_position] == nil

    value = @buffer[@oldest_position]
    @buffer[@oldest_position] = nil
    @oldest_position = increment(@oldest_position)
    value
  end

  def increment(position)
    (position + 1) % @buffer.size
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1
queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
