#roman to integer

def roman_to_integer(roman)
  digit_vals = #Creating a Hash
                {"i" => 1,
                "v" => 5,
                "x" => 10,
                "l" => 50,
                "c" => 100,
                "d" => 500,
                "m" => 1000}

  total = 0 # going to be our final number
  prev = 0 #this is for special cases
  index = roman.length - 1 #index of the last letter

  while index >= 0 #while the index is still positive:
  #set the last letter of the roman number to the variable c
  c = roman[index].downcase


  #then doing it for the letter before (from last to first)
  index = index - 1

  val = digit_vals[c]

  if !val #if not a valid letter
  puts "This is not a valid roman numeral"
  return
  end

  if val < prev
  val = val * -1
  #for special case like IV (5-1 = 4), IX (10-1 = 9), CM (1000 - 100 = 900)
  else
  prev = val
  end
  total = total + val
  end
  total #return the total

  end
  puts roman_to_integer('mcmxcix')
  puts roman_to_integer('CCIXV')
  puts roman_to_integer('VBDHK')
puts(roman_to_integer('CCCLXV'))
