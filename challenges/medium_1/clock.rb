=begin
  input: numbers
  output: string formatted for time

  rules:
    - independent of date
    - two clock with same time are equal
    - at CLASS METHOD
      - takes one or two number arguments (0-23) and (1 - 59) and returns a
        new clock object

    - to_s instance method
      - is called on return value of Clock::at (clock object)
      - returns formatted hours and minutes string
      - can be military time

    - + instance method
      - takes minutes input
      - adds to time

    - - class method
      - takes minutes input
      - subtracts time

  algorithm:
    - at class method
      - define to take one or two arguments
      - instantiate new Clock object, passing in one or two arguments to new
      - return that clock object

    - constructor
      - takes one or more arguments (hours and minutes)
      - if minutes is nil then it is 0

    - to_s
      - is called on a clock object
      - hours must wrap around (parse with % 24)
      - return formatted string of hours and minutes

    - +
      - convert minutes input into minutes and hours
      - add to @minutes and @hours
      - return new clock object with updated minutes and hours

    - - same as +

    - wrap around
      - when minutes are added, reset hours over 24

    -
=end

require 'pry'

class Clock
  attr_reader :hours, :minutes

  HOURS_IN_DAY = 24
  MINUTES_IN_HOUR = 60

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours, minutes = 0)
    new(hours, minutes)
  end

  def to_s
    format('%02d:%02d', @hours % HOURS_IN_DAY, @minutes)
  end

  def +(input)
    hours, minutes = input.divmod(MINUTES_IN_HOUR)
    @hours += hours
    @minutes += minutes
    self
  end

  def -(input)
    self.+(-input)
  end

  def ==(other_clock)
    @hours == other_clock.hours && @minutes == other_clock.minutes
  end
end

p clock = Clock.at(23, 30) + 60
p clock.to_s
