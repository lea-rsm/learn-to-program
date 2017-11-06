#better Program logger
$log_state = 0 #start

def log string, &block
  prefix = ' '*$log_state

    puts prefix +  "Beggining " + string + "..."
    $log_state = $log_state + 1 #create a line
  result = block.call

  $log_state = $log_state - 1
  puts prefix + "..." + string + " finished, returning:" + result.to_s

end

log 'outer block' do #inside there are 2 other log
  log 'some little block ' do

      log 'inside block' do

        ' one more to see the indentation'.upcase
      end
    ' ' + (2 + 3).to_s
  end

  log 'yet another block' do
'!god evol I '.reverse
end
  '0' == 0
end
