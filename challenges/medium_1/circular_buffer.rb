require 'pry'

=begin
  description:
    - Create a CircularBuffer class that who's objects are buffers of a given
      size.

  rules:
    - write
      - We can add objects to the next empty space by writing to the buffer.
      - If you try to write nil to the buffer, it does not write anyting.
      - If you try to write to a full buffer, you get a BufferFullException.

    - write!
      - You can forcibly write! to a full buffer and the oldest item will be
        overwritten.
      - You can not forcibly write! nil to the buffer.
      - If you forcibly write to buffer that is not full, it just adds to
        buffer.

    - read
      - When we read from the buffer, the oldest object is removed from the
        buffer
        and returned by the read method.
      - If we try to read and the buffer is empty, it throws a
        BufferEmptyException.

    - clear
      - We can clear the buffer with clear method.

      [f][g][][d][e]

      write 2
      read 3

  input:
    - buffer size

  algorithm:
    - @buffer = Array.new(size, '')
    - @write_idx = 0
    - @read_idx = 0

    - write
      - raise BufferFull exception if array does not include empty strings
      - if argument is nil then don't do anything
      - buffer at write index
      - incriment write by 1
      - if write == buffer size then write = 0

    - write!
      - if argument is nil then don't do anything
      - if buffer has an empty string, then write to buffer
      - otherwise write! to buffer at read index
      - increment read by 1
      - if read == buffer size then read = 0

    - read
      - raise buffer empty exception read index is a ''
      - return buffer at read index and replace with ''
      - incriment read by 1
      - if read == buffer size then read = 0

    - clear
      - transform buffer to array of empty strings

=end

class BufferEmptyException < StandardError
end

class BufferFullException < StandardError
end

class CircularBuffer
  def initialize(size)
    @buffer = Array.new(size, '')
    @write_idx = 0
    @read_idx = 0
  end

  def write(str)
    raise BufferFullException unless @buffer[@write_idx] == ('')
    return nil if str.nil?

    @buffer[@write_idx] = str
    @write_idx += 1
    @write_idx = 0 if @write_idx >= @buffer.size
  end

  def write!(str)
    return nil if str.nil?

    if @buffer[@write_idx] == ''
      write(str)
    else
      @buffer[@read_idx] = str
      @read_idx += 1
      @read_idx = 0 if @read_idx >= @buffer.size
    end
  end

  def read
    raise BufferEmptyException if @buffer[@read_idx] == ''
    value = @buffer[@read_idx]
    @buffer[@read_idx] = ''
    @read_idx += 1
    @read_idx = 0 if @read_idx >= @buffer.size
    value
  end

  def clear
    @buffer.map! { |_| '' }
  end
end
