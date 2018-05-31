require_relative './queue.rb'

queue1 = Queue.create('list')
queue2 = Queue.create('array')

queue1.enqueue('tutu')
queue2.enqueue('toto')