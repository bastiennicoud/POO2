require_relative('../../list/node')
require_relative('../../list/list')

class Queue
  
  def initialize ()
    @list = List.new()
  end
  
  def empty?
    @list.empty?
  end
  
  def size
    @list.count
  end
  
  def enqueue(value)
    @list.append(value)
  end
  
  def dequeue
    @list.takeFirst
  end
  
end
