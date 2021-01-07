
class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super
  end
end

# FEX

class Student
  def initialize
    @id = (1..10000).to_a.sample
  end

  def to_s
    "I am a student!"
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super()
    @name = name
    @year = year
    @parking = parking
  end
end

p Student.new
p Graduate.new('Tim', 2020, 'east lot')
