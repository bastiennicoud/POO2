class Queue
  
  def initialize ()
    @array = []
  end
  
  def empty?
    @array.empty?
  end
  
  def size
    @array.length
  end
  
  def enqueue(value)
    @array.push(value)
  end
  
  def dequeue
    @array.shift
  end
  
end
