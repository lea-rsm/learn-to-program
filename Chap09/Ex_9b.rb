#Old-school Roman numerals.

def old_roman(num)
 roman = ''

roman = roman + 'M' * (num/1000)
roman = roman + 'D' * ((num%1000)/ 500)
roman = roman + 'C' * ((num%500)/ 100)
roman = roman + 'L' * ((num%100)/ 50)
roman = roman + 'X' * ((num%50)/ 10)
roman = roman + 'V' * ((num%10)/ 5)
roman = roman + 'I' * ((num% 5)/ 1)

end

puts old_roman(2984)