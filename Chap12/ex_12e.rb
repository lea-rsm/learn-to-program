#Birthday Helper with the age version

birth_dates = {} #creates empty hash

File.readlines('birthday.txt').each do |line|
  name, date, year = line.split(',') #split birthday into month, day, and year wherever comma is encountered
  birth_dates[name] = Time.gm(year, *(date.split))

  end

  puts "Whose birthday would you like to know?"
  name = gets.chomp
  bday = birth_dates[name]

  if bday == nil
  puts "don't know that one sorry!"

  else
  now = Time.new
  age = now.year - bday.year #difference to have the age of the Christopher

  if now.month > bday.month
  || (now.month == birthday.month && now.day > bday.day) # if today's date is after the birthday date
  age += 1
  end

  if now.month == bday.month && now.day == bday.day
  puts "#{name} turns #{age} today!!"
  #because same day as time.now

  else
  date = bday.strftime "%b %d" #formated dates usign srftime's format directives %b and %d (for month and day)
  puts "#{name} will be #{age} on #{date}."
  end
