# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
count = 0

loop do
  say_to_grandma = gets.chomp

  if say_to_grandma == 'BYE'
    count += 1
    if count == 3
      puts 'Nana: BYE SWEETIE!'
      break
    else
      puts "Nana: HOW'S SCHOOL GOING?"
    end
  elsif say_to_grandma.upcase == say_to_grandma
    count = 0
    year = rand(21)
    puts "Nana: NOT SINCE #{1930 + year}!"
  else
    count = 0
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
  end
end
