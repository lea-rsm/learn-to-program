#English numbers

# A REVOIR!!

def english_number number
    if number < 0 #Because we don't want negatiev numbers
      return "Please enter a number that isn't negative."
    end
    if number == 0
      return "Zero"
    end

    num_string = '' #creating an empty string that we will return.

    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

    teen = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

    zillions = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15], ['quintillion', 18], ['sextillion', 21]
                ['septillion', 24], ['octillion', 27], ['nonillion', 30], ['decillion', 33], ['undecillion', 36], ['duodecillion', 39], ['tredecillion', 42],
                ['quattuordecillion', 45], ['quindecillion', 48],
                ['sexdecillion', 51], ['septendecillion', 54], ['octodecillion', 57], ['novemdecillion', 60], ['vigintillion', 63], ['googol', 100]]


    #left is how much of the number we still have left to write out.
    #write is the part we are writing out right now.
    left = number

    while zillions.length > 0
      zil_pair = zillions.pop
      zil_name = zil_pair[0]
      zil_base = 10 ** zil_pair[1]

      write = left/zil_base
      left = left - write*zil_base
      if write > 0
        prefix = english_number write
        num_string = num_string + prefix + ' ' + zil_name
        if left > 0
        num_string = num_string + ' '
      end
    end
  end
    write = left/100 #how many hundreds left?

    left = left - write*100 # subtract off those hundreds

    if write > 0
      #recursion
      hundreds = english_number write
      num_string = num_string + hundreds + 'hundred'

      if left > 0
        #So we create a space and don't write "two hundredfifty-one"
        num_string = num_string + ' '
      end
    end

    write = left/10        #how many tens left?
    left = left - write*10 #subtract off those tens

    if write > 0
      if ((write == 1) and (left > 0))
        #we can't write tenty-two instead of twelve, special exeption :
        num_string = num_string + teen[left-1]
        #-1 is because teen[3] is fourteen, not thirteen

        #since we took care of the digit in the ones place already, we have nothing left to write.
        left = 0
      else
        num_string = num_string + tens_place[write-1]
      end
      if left > 0
        num_string = num_string + "-"
      end
    end
    write = left #how many ones left to write?
    left = 0 #subtract off those ones

    if write > 0
      num_string = num_string + ones_place[write-1]
    end
    #now we return the num_string
    num_string
  end

  puts (0)
  puts (1644949)
  puts (1000000383829)
  puts (45678)
