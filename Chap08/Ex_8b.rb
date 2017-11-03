#Table of content, revisited
title = 'Table of Contents'

chapters = [['Getting Started', 1], ['Numbers', 2], ['Letters', 3]]


line_width = 50
puts title.center(line_width)
puts ''
chapter_num = 1

#for each chapter in the array
chapters.each do |chap|
  name = chap[0] #0 is equal to the first part of the array
  page = chap[1] #1 is equal to the last part of the array (here)

  left_side = 'Chapter ' + chapter_num.to_s + ': ' + name
  right_side = 'page ' + page.to_s

puts left_side.ljust(30) + right_side.rjust(20)
chapter_num = chapter_num + 1
end
