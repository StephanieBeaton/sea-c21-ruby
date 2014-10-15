# 5 points
#
# Write a program that displays the following table of contents:
#
#   $ ruby exercise7.rb
#                   Table of Contents
#   Chapter 1:  Getting Started                page  1
#   Chapter 2:  Numbers                        page  9
#   Chapter 3:  Letters                        page 13
#
# TIP #1: The width of each line is 50 characters.
#
# TIP #2: You'll need the following methods:
#
#   string.center(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` centered.
#
#     'bird'.center(10)  #=> '   bird   '
#
#   string.ljust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` left justified.
#
#     'bird'.ljust(10)  #=> 'bird      '
#
#   string.rjust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` right justified.
#
#     'bird'.rjust(10)  #=> '      bird'

line_width = 50
toc_title  = 'Table of Contents'

puts toc_title.center(line_width)

chptr_nbr   = 1
chptr_title = 'Getting Started'
chptr_page  = 1

left_side_of_line  = 'Chapter ' + chptr_nbr.to_s + ':  ' + chptr_title
right_side_of_line = 'page  '   + chptr_page.to_s

# puts 'left_side_of_line.length = ' + left_side_of_line.length.to_s
# puts 'right_side_of_line.length = ' + right_side_of_line.length.to_s
# puts 'left_side_of_line = "' + left_side_of_line + '"'
# puts 'right_side_of_line = "' + right_side_of_line + '"'

puts left_side_of_line.ljust((line_width / 5) * 4) +
    right_side_of_line.rjust((line_width / 5) * 1)

chptr_nbr   = 2
chptr_title = 'Numbers'
chptr_page  = 9

# puts 'left_side_of_line.length = ' + left_side_of_line.length.to_s
# puts 'right_side_of_line.length = ' + right_side_of_line.length.to_s
# puts 'left_side_of_line = "' + left_side_of_line + '"'
# puts 'right_side_of_line = "' + right_side_of_line + '"'

left_side_of_line  = 'Chapter ' + chptr_nbr.to_s + ':  ' + chptr_title
right_side_of_line = 'page  '   + chptr_page.to_s

puts left_side_of_line.ljust((line_width / 5) * 4) +
    right_side_of_line.rjust((line_width / 5) * 1)

chptr_nbr   = 3
chptr_title = 'Letters'
chptr_page  = 13

# puts 'left_side_of_line.length = ' + left_side_of_line.length.to_s
# puts 'right_side_of_line.length = ' + right_side_of_line.length.to_s
# puts 'left_side_of_line = "' + left_side_of_line + '"'
# puts 'right_side_of_line = "' + right_side_of_line + '"'

left_side_of_line  = 'Chapter ' + chptr_nbr.to_s + ':  ' + chptr_title
right_side_of_line = 'page '    + chptr_page.to_s

puts left_side_of_line.ljust((line_width / 5) * 4) +
    right_side_of_line.rjust((line_width / 5) * 1)
