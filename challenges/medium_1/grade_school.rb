require 'pry'

=begin
  description:
    - store students name with the grade they are in
    - add students to a grade
    - retrieve students from a grade
    - retrieve list of students in whole school

  input:
    - add instance method input is string and number

  rules:
    - roster is an instance variable where number keys are grades and array
      values contain strings of names in that grade
    - to_h instance method returns this hash
    - add instance method takes a string name and an integer and adds the name
      to the grade
        - @roster is always sorted from 1 up and with each name alphabetical
    - grade instance method takes integer argument
      - alphebetized array of names in that grade is returned
      - if grade does not exist, empty array is returned
    -

    -


  algorithm
    - @roster is empty hash
    - to_h returns roster
    - add instance method
      - if roster has key then add names to that key
      - else create key and add names to key
      - sort keys
      - sort names
    - grade instance method
      - retrieve value for key input
      - if key does not exist, return empty hash

=end


# {1=>["Anna", "Barb", "Charlie"], 2=>["Alex", "Peter"], ...}

# class School
#   attr_reader :roster
#
#   def initialize
#     @roster = Hash.new([])
#   end
#
#   def to_h
#     @roster = @roster
#                 .sort
#                 .to_h
#                 .each_value { |value| value.sort! }
#                 .to_h
#   end
#
#   def add(name, grade)
#     @roster.has_key?(grade) ? @roster[grade] << name : @roster[grade] = [name]
#   end
#
#   def grade(num)
#     @roster[num]
#   end
# end

class School
  def initialize
    @roster = Hash.new([])
  end

  def to_h
    @roster
      .each { |grade, names| @roster[grade] = names.sort }
      .sort
      .to_h
  end

  def add(name, grade)
    @roster[grade] += [name]
  end

  def grade(num)
    @roster[num]
  end
end
