#Measures the time it takes to run a block.
def measure(n = 1) 
  total_time = 0
  start_time = Time.now
  n.times { yield }
  end_time = Time.now
  total_time += end_time - start_time
  total_time / n
end