LETTERS = ('A'..'Z').to_a
NUMBERS = ('0'..'9').to_a

class Robot
    @@names = []

  def name
    generate_name unless @name
    @name
  end

  def generate_name
    letters = 2.times.map { |letter| LETTERS.sample }
    numbers = 3.times.map { |number| NUMBERS.sample }
    @name = (letters + numbers).join

    generate_name if @@names.include?(@name)

    @@names << @name
  end

  def reset
    @@names.delete(@name)
    generate_name
  end


end

p Robot.new.name


=begin
  - robot class
    - initialize instance method
      - @name
      - @active_names = [] (class variable)
    - name instance method
      - does not generate name
      - returns robot name if name
      - else calls generate name method
    - reset instance method
      - deletes name
    - generate name
      - name is randomly generated
        - HG847
          - two uppercase letters (can be same letter)
          - three digits (can be same digit)
      - check for duplicate
        - if name is taken
          - generate new name
        - else set name
        - add name to active names array
    - check for duplicate
      - active names array
      - passed in name is in the array?
=end
