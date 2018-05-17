require_relative('queue')

puts Date.now()

queue = Queue.new()
a = 0

while a < 100 do
  queue.enqueue(a)
  a += 1
end

puts Date.now()

b = 0

while b < 100 do
  puts queue.dequeue
  a += 1
end

puts Date.now()