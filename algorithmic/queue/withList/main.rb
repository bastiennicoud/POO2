require_relative('queue')
require 'benchmark'

longQueue = Queue.new()
shortQueue = Queue.new()

Benchmark.bm do |x|
  x.report('Enqueue 1000000 (in queue A)') do
    a = 0
    while a < 1000000 do
      longQueue.enqueue(a)
      a += 1
    end
  end
  
  x.report('Enqueue 1000000 more elements (in queue A)') do
    a = 0
    while a < 1000000 do
      longQueue.enqueue(a)
      a += 1
    end
  end
  
  x.report('Enqueue 1000000 elements (in queue B)') do
    a = 0
    while a < 1000000 do
      shortQueue.enqueue(a)
      a += 1
    end
  end
  
  x.report('Dequeue 1000000 elements (in queue A)') do
    a = 0
    while a < 1000000 do
      longQueue.dequeue
      a += 1
    end
  end
  
  x.report('Dequeue 1000000 elements (in queue B)') do
    a = 0
    while a < 1000000 do
      shortQueue.dequeue
      a += 1
    end
  end
end