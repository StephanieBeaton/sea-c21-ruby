#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` and `load` methods with your solutions from exercise 5.
#
# Write a program that, when given both a key and a value, updates the database
# by adding a new key-value pair:
#
#   $ ruby exercise6.rb friend 'Paul McCartney'
#   Updated 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :friend => "Paul McCartney"
#
# Or modifying an existing key-value pair:
#
#   $ ruby exercise6.rb name 'John Lennon'
#   Updated 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :name => "John Lennon"
#
# TIP: How do you merge two Hashes together?

require 'yaml'

def database
  File.absolute_path('../database.yml', __FILE__)
end

def load
  YAML.load_file(database)
end

def save(locl_person)
  File.write(database, locl_person.to_yaml)
end

# This update method updates a key, value pair
# ...or it inserts a new key, value pair
# .. without using "merge"

# def update(key, value)
#  person = load
#  # puts person
#  person[key.to_sym] = (value.to_i != 0) ? value.to_i : value
#  # puts
#  # puts person
#  save person
# end

# This update method updates a key, value pair
# ...or it inserts a new key, value pair
# .. by using "merge"

def update(key, value)
  person = load
  person = person.merge(key.to_sym => (value.to_i != 0) ? value.to_i : value)
  save person
end

input1, input2 = ARGV

abort 'Usage: exercise5.rb KEY VALUE' unless input1 && input2

update(input1, input2)

puts "Updated 1 key-value pair in #{database}"
puts ":#{input1} => #{input2.inspect}"
