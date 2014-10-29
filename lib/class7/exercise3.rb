#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and extend it with the following method:
#
#   OrangeTree#pick!(amount = 1) #=> Integer or nil
#
#     Returns nil if @fruit is less than the `amount` to pick.
#     Otherwise, subtracts the `amount` from @fruit and returns it's new value.
#     The default `amount` is 1.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit      #=> 50
#
#     orange_tree.pick!      #=> 49
#     orange_tree.fruit      #=> 49
#
#     orange_tree.pick!(5)   #=> 44
#     orange_tree.fruit      #=> 44
#
#     orange_tree.pick!(50)  #=> nil
#     orange_tree.fruit      #=> 44

# rubocop:disable TrivialAccessors
class OrangeTree
  def initialize
    puts 'inside initialize and setting @fruit to 50.'
    # Sets it's @fruit instance variable to 50.
    @fruit = 50
  end

  def fruit
    # Returns the value of the @fruit instance variable
    @fruit
  end

  def pick!(amount = 1)
    # Returns nil if @fruit is less than the `amount` to pick.
    # Otherwise, subtracts the `amount` from @fruit and returns it's new value.
    # The default `amount` is 1.
    if @fruit < amount
      return nil
    else
      @fruit -= amount
    end
  end
end

orange_tree = OrangeTree.new
puts "orange_tree.fruit = #{orange_tree.fruit}"      # => 50

puts "orange_tree.pick! returns #{orange_tree.pick!}"      # => 49
puts "orange_tree.fruit = #{orange_tree.fruit}"      # => 49

puts "orange_tree.pick!(5) returns #{orange_tree.pick!(5)}"   # => 44
puts "orange_tree.fruit = #{orange_tree.fruit}"      # => 44

puts "orange_tree.pick!(50) returns #{orange_tree.pick!(50)}"  # => nil
puts "orange_tree.fruit = #{orange_tree.fruit}"      # => 44
