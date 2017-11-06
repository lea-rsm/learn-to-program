#Grandfather clock

def gf_clock &block
hour = Time.new.hour #give time but from 0 to 23

    if hour >= 13
      hour = hour - 12 #difference make it between 0 and 12
    end

    if hour == 0 #then midnight or midday
      hour = 12
    end

  hour.times do
    block.call
  end
end

#return the number of DONG depending on the hour
gf_clock do
  puts 'DONG!'
end
