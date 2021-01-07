=begin
  input: block with a string
  output: play outputs most recent string

  rules:
    - listen instance method yields if block is given and puts the string from teh block in @recordings
      - if no block is given, nothing happens
    - play instance method outputs most recent string in recordings

  algorithm:
    - listen
      - if a block is given pass its return value to @recordings
      - otherwise, do nothing

    - play
      - output last element from @recordings

=end

class Device
  attr_reader :recordings

  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    record(yield) if block_given?
  end

  def play
    puts @recordings.last
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
p listener.recordings
