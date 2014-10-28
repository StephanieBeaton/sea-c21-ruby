#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    # Returns the number of hours converted to seconds.
    # 10.hours_in_seconds  #=> 36_000
    self * 60 * 60
  end
end

class String
  def indent(amount = 2)
    # Returns `amount` spaces plus the String. The default `amount` is 2.
    # 'foo'.indent     #=> '  foo'
    # 'foo'.indent(3)  #=> '   foo'
    ' ' * amount + self
  end
end

class Integer
  # rubocop:disable MethodLength
  def to_roman
    roman_letter_values = [['M', 1000],
                           ['CM', 900],
                           ['D',  500],
                           ['CD', 400],
                           ['C',  100],
                           ['XC',  90],
                           ['L',   50],
                           ['XL',  40],
                           ['X',   10],
                           ['IX',   9],
                           ['V',    5],
                           ['IV',   4],
                           ['I',    1]]

    remainder = self

    roman_numeral = ''

    roman_letter_values.each do | roman_letter, value|
      quotient = remainder / value
      roman_numeral += roman_letter * quotient
      remainder = remainder % value
    end

    roman_numeral
  end
end

class Array
  def second
    # Returns the second element of the Array.
    # [10, 20, 30].second  #=> 20
    self[1]
  end

  def third
    # Returns the third element of the Array.
    # [10, 20, 30].third  #=> 30
    self[2]
  end
end

# puts '10.hours_in_seconds = '
# puts 10.hours_in_seconds
# puts
# puts 'foo.indent = '
# puts 'foo'.indent
# puts
# puts '40.to_roman ='
# puts 40.to_roman
# puts
# puts '[10, 20, 30].second  #=> 20'
# puts [10, 20, 30].second
# puts
# puts '[10, 20, 30].third  #=> 30'
# puts [10, 20, 30].third
