# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# Tip: I expect you to use a loop and a few modulo operations.

# puts 'Enter beginning year:'
# beginning_year = gets.chomp.to_i
# puts 'Enter end year:'
# ending_year = gets.chomp.to_i

year = 1900
while year <= 2000
  if (year % 4 == 0) && (year % 100 > 0)
    puts "#{year}"
  elsif (year % 4 == 0) && (year % 400 == 0)
    puts "#{year}"
  end

  year += 1
end
