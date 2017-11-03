#Leap Years

puts "Please give me a starting year."
start_year = gets.chomp.to_i

puts "Now an ending year, please!"
end_year = gets.chomp.to_i

#Because between those 2.
year = start_year

puts "Those are the leap years I could find during this dates:"
while year <= end_year
    if year % 4 == 0
      if year % 100 != 0 || year % 400 == 0
        puts year
      end
    end
    year = year + 1
  end

if year = 0
  puts "No leap years during this time!"
end
