#!/usr/bin/env ruby
#
# 5 points
#
# Copy the previous OrangeTree class and extend it with the following method:
#
#   OrangeTree#pick(amount = 1) #=> OrangeTree
#
#     Returns `nil` if `@fruit` is less than the `amount` to pick.
#     Otherwise, returns a new OrangeTree object with it's fruit instance
#     variable initialized to the difference between `@fruit` and `amount`.
#     The default `amount` is 1.
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit     #=> 50
#
#     orange_tree.pick      #=> OrangeTree.new(49)
#     orange_tree.fruit     #=> 50
#
#     orange_tree.pick(49)  #=> OrangeTree.new(1)
#     orange_tree.fruit     #=> 50
#
#     orange_tree.pick(50)  #=> OrangeTree.new(0)
#     orange_tree.fruit     #=> 50
#
#     orange_tree.pick(51)  #=> nil
#     orange_tree.fruit     #=> 50
#
# TIP: To successfully complete this exercise, an OrangeTree object's `@fruit`
# instance variable should be assigned once and only once.
#
# Where should it be assigned? From within the initialize method. Once assigned,
# the `@fruit` instance variable should never, ever change.
#
# If you feel compelled to reassign `@fruit` outside the initialize method, you
# should stop and rethink your approach.

# rubocop:disable TrivialAccessors
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

  def pick(amount = 1)
    #   OrangeTree#pick(amount = 1) #=> OrangeTree
    #
    #     Returns `nil` if `@fruit` is less than the `amount` to pick.
    #     Otherwise, returns a new OrangeTree object with it's fruit instance
    #     variable initialized to the difference between `@fruit` and `amount`.
    #     The default `amount` is 1.
    if @fruit < amount
      return nil
    else
      return OrangeTree.new(@fruit - amount)
    end
  end
end

puts 'orange_tree = OrangeTree.new'
orange_tree = OrangeTree.new
puts "orange_tree.fruit = #{orange_tree.fruit}"    # => 50
puts

puts 'orange_tree_2 = orange_tree.pick'
orange_tree_2 = orange_tree.pick                   # => OrangeTree.new(49)
puts "orange_tree_2.fruit = #{orange_tree_2.fruit}"
puts "orange_tree.fruit = #{orange_tree.fruit}"    # => 50
puts

puts 'orange_tree_3 = orange_tree.pick(49)'
orange_tree_3 = orange_tree.pick(49)               # => OrangeTree.new(1)
puts "orange_tree_3.fruit = #{orange_tree_3.fruit}"
puts "orange_tree.fruit = #{orange_tree.fruit}"    # => 50
puts

puts 'orange_tree_4 = orange_tree.pick(50)'
orange_tree_4 = orange_tree.pick(50)               # => OrangeTree.new(0)
puts "orange_tree_4.fruit = #{orange_tree_4.fruit}"  # => 0
puts "orange_tree.fruit = #{orange_tree.fruit}"    # => 50
puts

puts 'orange_tree_5 = orange_tree.pick(51)'
orange_tree_5 = orange_tree.pick(51)               # => nil
puts "orange_tree_5 = #{orange_tree_5}"
puts "orange_tree.fruit = #{orange_tree.fruit}"    # => 50
