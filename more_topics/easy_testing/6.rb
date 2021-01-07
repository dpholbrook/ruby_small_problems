class NoExperienceError < StandardError
end

class Employee
  def hire
    raise NoExperienceError
  end
end

require 'minitest/autorun'

class Testing < Minitest::Test
  def setup
    @employee = Employee.new
  end

  def test_raise_no_experience_error
    assert_raises NoExperienceError do
      @employee.hire
    end
  end
end
