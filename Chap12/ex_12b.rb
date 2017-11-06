#Happy Bday

puts "When is your birthday year?"

ans_year= gets.chomp.to_i
puts "When is your birthday month (in numbers)?"
ans_month = gets.chomp.to_i
puts "And your birth..day? (in numbers)?"
ans_day = gets.chomp.to_i

bday_date = Time.local(ans_year, ans_month, ans_day)

time = Time.new

age = ((time - bday_date) / (60 * 60 * 24 * 365)).to_i

age2 = 1

while Time.local(ans_year + age2, ans_month, ans_day) <= time
  puts "SPANK!"
  age2 = age2 + 1
end

puts "Well, you got #{age} SPANKS!"
