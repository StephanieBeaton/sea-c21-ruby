#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 5 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction 'IX' nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written 'VIIII' and so on.
#
# Write a method that, when passed any integer between 1 and 3000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   old_roman_numeral(9)
#
# should return
#
#   'VIIII'
#
# Make sure to test your method on a bunch of different numbers like 1999.
#
# Hint 1: Use the integer division and modulus methods on page 32.
#
# Hint 2: Here's a mapping of Roman to Arabic numerals:
#
#   I = 1
#   V = 5
#   X = 10
#   L = 50
#   C = 100
#   D = 500
#   M = 1000
#
# Hint 3: Run the program from the shell like this:
#
#   $ ruby 4_old_school_roman_numerals.rb 9
#   VIIII

def old_school_roman_numeral(num)

  roman_letter_values = [['M', 1000],
                         ['D', 500],
                         ['C', 100],
                         ['L', 50],
                         ['X', 10],
                         ['V', 5],
                         ['I', 1]]

  remainder = num

  roman_numeral = ''

  roman_letter_values.each do | roman_letter, value|
    # puts "roman_letter = #{roman_letter}  value = #{value}"

    quotient = remainder / value

    # puts "quotient = #{quotient}"

    roman_numeral = roman_numeral + roman_letter * quotient

    # puts "roman_numeral = #{roman_numeral}"

    remainder = remainder % value

    # puts "remainder = #{remainder}"
  end

  return roman_numeral
end

input = ARGV[0].to_i

unless input.between?(1, 3000)
  abort 'Usage: 4_old_school_roman_numerals [1-3000]'
end

puts old_school_roman_numeral(input)

