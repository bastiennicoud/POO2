require_relative('queue')
require 'benchmark'

queue = Queue.new()

Benchmark.bm do |x|
  x.report('Enqueue') do
    a = 0
    while a < 1000000 do
      queue.enqueue(a)
      a += 1
    end
  end
  x.report('Dequeue') do
    b = 0
    while b < 1000000 do
      queue.dequeue
      b += 1
    end
  end
end