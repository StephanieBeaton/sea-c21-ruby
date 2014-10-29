#!/usr/bin/env ruby
#
# 5 points
#
# Make an OrangeTree class with the following methods:
#
#   OrangeTree#initialize
#
#     Sets it's @fruit instance variable to 50.
#
#   OrangeTree#fruit #=> Integer
#
#     Returns the value of the @fruit instance variable
#
#     orange_tree = OrangeTree.new
#     orange_tree.fruit  #=> 50

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
end

orange_tree = OrangeTree.new
puts "the number of oranges on the tree is = #{orange_tree.fruit}"
