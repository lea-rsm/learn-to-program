#One billion seconds

time = Time.gm(1993, 01, 10, 20, 40)
time2 = Time.new

puts time
puts time2

seconds = (time - time2).abs
puts seconds

seconds_left = (1000000000 - seconds) #difference between 1 billion and my seconds old
years_left = seconds_left / (60 * 60 * 24 * 365) #transform it in years
puts "#{years_left} years left until i'm 1 billion seconds!"
