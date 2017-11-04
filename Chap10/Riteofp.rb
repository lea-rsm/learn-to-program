#Rite of passage : sorting

def sort some_array #this wraps recursive_sort
recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array

if unsorted_array.length <= 0 #if unsorted_array is empty, then no more words to sort!
  return sorted_array
end

smallest = unsorted_array.pop #taking out the last word of the array
still_unsorted = [] #creating an array

  unsorted_array.each do |word|
    if
    word < smallest #word is then before smallest in alphabetical order
    still_unsorted.push smallest #we put back smallest in the still_unsorted array
    else
    still_unsorted.push word #smallest come before so we put word in the still_unsorted
    end

end

#Now smallest really does point to the smallest element that "unsorted" contained
#and all the rest of it is in "still_unsorted"

sorted_array.push smallest
recursive_sort still_unsorted, sorted_array

end

puts (sort ['can', 'feel', 'singing', 'like', 'a', 'can'])
