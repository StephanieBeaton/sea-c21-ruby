# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

n = 3
word = 'bottles'

loop do
  puts "#{n} #{word} of beer on the wall, #{n} #{word} of beer!"

  n -= 1
  n = 'no more' if n == 0

  if n == 1
    word = 'bottle'
  else
    word = 'bottles'
  end

  puts "Take one down, pass it around, #{n} #{word} of beer on the wall!"

  break if n == 'no more'

end

puts 'No more bottles of beer on the wall, no more bottles of beer!'
puts 'Go to the store and buy some more, 3 bottles of beer on the wall!'
