=begin
  - overview
    - Write a program that can take a month and a year and then a day of the
      week and either:
        - first
        - second
        - third
        - fourth
        - last
        - teenth
    - The program then spits out the date of your meeting

  - input: month, year, day of week, week of month
  - output: Date object (year, month, day)

  - rules
    - Meetup class
        - initialize month, year
      - .day instance method
        - input: SYMBOL day of week, SYMBOL :first, second, etc

  - algorithm
    - generate all days of that month in that year
    - store each day in a sub array containing mday and wday
      - return nested array
    - select the days whos wday is the same as the input wday
      - return nested array
    - select the day from the input week of month
      - if it is teenth then it is the mday that

    generate month
      - iterate 1 to 31
        - if mday is a valid date
        - then push [mday, wday] to month arr
        - else, dont
      - select all date objects whos wday matches input weekday
        - if first - fourth
          - return Date object of index SCHEDULE[schedule]
        - otherwise, if schedule is teenth
          - select week whos mday is between 13 and 19

        - you now have an array containing the mday and wday
        - return date with mday
=end

require 'Date'

class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    possible_dates = filter_weekdays(weekday)

    case schedule
    when :teenth then select_teenth(possible_dates)
    when :last then possible_dates.last
    when :first then possible_dates.first
    when :second then possible_dates[1]
    when :third then possible_dates[2]
    when :fourth then possible_dates[3]
    end
  end

  private

  def filter_weekdays(weekday)
    days_of_month.select { |date| date.public_send(weekday.to_s + '?') }
  end

  def days_of_month
    (Date.new(@year, @month)..Date.new(@year, @month, -1)).to_a
  end

  def select_teenth(possible_dates)
    possible_dates.detect { |date| (13..19).cover?(date.mday) }
  end
end
#
# p Meetup.new(5, 2013).day(:monday, :first) #== Date.new(2013, 5, 6)

# p Meetup.new(5, 2013).day(:monday, :teenth) == Date.new(2013, 5, 13)
#
# #===================
#
# WDAYS = {
#   sunday: 0, monday: 1, tuesday: 2, wednesday: 3,
#   thursday: 4, friday: 5, saturday: 6
# }
#
# class Meetup
#   def initialize(month, year)
#     @month = month
#     @year = year
#   end
#
#   def day(weekday, schedule)
#     possible_mdays = select_possible_mdays(weekday)
#
#     mday = case schedule
#             when :teenth then select_teenth(possible_mdays)
#             when :last then possible_mdays.last
#             when :first then possible_mdays.first
#             when :second then possible_mdays[1]
#             when :third then possible_mdays[2]
#             when :fourth then possible_mdays[3]
#           end
#
#     Date.new(@year, @month, mday)
#   end
#
#   private
#
#   def select_possible_mdays(weekday)
#     generate_days_of_month.select { |mday, wday| wday == WDAYS[weekday] }
#                           .map { |mday, wday| mday }
#   end
#
#   # def generate_days_of_month
#   #   (1..31).each_with_object([]) do |day, arr|
#   #     if Date.valid_date?(@year, @month, day)
#   #       date = Date.new(@year, @month, day)
#   #       arr << [date.mday, date.wday]
#   #     end
#   #   end
#   # end
#
#   def generate_days_of_month
#     (Date.new(@year, @month)..Date.new(@year, @month, -1)).to_a
#     .map { |date| [date.mday, date.wday]}
#   end
#
#   def select_teenth(possible_mdays)
#     possible_mdays.select { |mday| (13..19).include?(mday) }.first
#   end
#
# end
# #
# # p Meetup.new(5, 2013).day(:monday, :first) #== Date.new(2013, 5, 6)
#
# p Meetup.new(5, 2013).day(:monday, :teenth) == Date.new(2013, 5, 13)
