class List

  @firstNode = nil;
  @lastNode = nil;

  def initialize()
  end

  def append(nodeValue)
    # Check if the list is empty
    if (@firstNode.empty? && @lastNode.empty?) {
      # Create the element il all node
      @firstNode      = Node.new(nodeValue)
      @firstNode.next = nil
      @firstNode.prev = nil
      @lastNode       = nil
    # If one element in the list
    } elsif (@lastNode == nil) {
      @lastNode       = Node.new(nodeValue)
      @lastNode.next  = nil
      @lastNode.prev  = @firstNode
      @firstNode.next = @lastNode
    # Create a new element and add it to the end
    } else {
      tmp       = Node.new(nodeValue)
      tmp.next  = nil
      tmp.prev  = @lastNode
      @lastNode = tmp
    }
  end

  def prepend(nodeValue)
    if (@firstNode.empty? && @lastNode.empty?) {
      # Create the element il all node
      @firstNode      = Node.new(nodeValue)
      @firstNode.next = nil
      @firstNode.prev = nil
      @lastNode       = nil
    # If one element in the list
    } elsif (@lastNode == nil) {
      @lastNode       = @firstNode
      @firstNode      = Node.new(nodeValue)
      @firstNode.prev = nil
      @firstNode.next = @lastNode
      @lastNode.prev  = @firstNode
    } else {
      tmp      = Node.new(nodeValue)
      tmp.next = @firstNode
      tmp.prev = nil
      @firstNode = tmp
    }
  end

  def getFirst
    @firstNode
  end

  def getLast
    @lastNode
  end

  def takeFirst
  end

  def takeLast
  end

  def count
  end

  def empty?
    if (@firstNode.empty? && @lastNode.empty?)
  end

  def each
    yield
  end

end
