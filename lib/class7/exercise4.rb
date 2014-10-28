#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and replace the following method:
#
#   OrangeTree#initialize(fruit = 50)
#
#     Sets it's `@fruit` instance variable to the `fruit` parameter, which
#     defaults to 50.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit  #=> 50
#
#     orange_tree = OrangeTree.new(20)
#     orange_tree.fruit  #=> 20
#
# And extend the OrangeTree class with the following method:
#
#   OrangeTree#==(other) #=> true or false
#
#     Given another object, returns `true` if both objects have the same amount
#     of `fruit`. Otherwise, returns `false`.
#
#     OrangeTree.new(20) == OrangeTree.new(20)
#     OrangeTree.new(20) != OrangeTree.new(10)

class OrangeTree
  def initialize(fruit = 50)
    puts "inside initialize and setting @fruit to #{fruit}."
    # Sets it's `@fruit` instance variable to the `fruit` parameter, which
    # defaults to 50.
    @fruit = fruit
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

  def ==(other)
    # OrangeTree#==(other) #=> true or false
    #
    # Given another object, returns `true` if both objects have the same amount
    # of `fruit`. Otherwise, returns `false`.
    @fruit == other.fruit
  end
end

puts 'orange_tree = OrangeTree.new'
orange_tree = OrangeTree.new
puts "orange_tree.fruit = #{orange_tree.fruit}"  # => 50

puts 'orange_tree = OrangeTree.new(20)'
orange_tree = OrangeTree.new(20)
puts "orange_tree.fruit = #{orange_tree.fruit}"  # => 20

# test '==' method
puts 'OrangeTree.new(20) == OrangeTree.new(20)'
puts "#{OrangeTree.new(20) == OrangeTree.new(20)}"
puts
puts 'OrangeTree.new(20) != OrangeTree.new(10)'
puts "#{OrangeTree.new(20) != OrangeTree.new(10)}"
