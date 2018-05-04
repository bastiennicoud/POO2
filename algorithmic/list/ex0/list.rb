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
    } elsif (!@firstNode.empty? && @lastNode.empty? {
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
    } elsif (!@firstNode.empty? && @lastNode.empty?) {
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

  # return the node value
  def getFirst
    @firstNode.value
  end

  # return the node value
  def getLast
    @lastNode.value
  end

  def takeFirst
    if (@firstNode.empty? && @lastNode.empty?) {
      return nil
    } elsif (!@firstNode.empty? && @lastNode.empty?) {
      tmp        = @firstNode.value
      @firstNode = nil
      return tmp
    } else {
      tmp             = @firstNode.value
      if (@firstNode.next == @lastNode) {
        @firstNode      = @lastNode
        @lastNode       = nil
        @firstNode.prev = nil
      } else {
        @firstNode      = @firstNode.next
        @firstNode.prev = nil
      }
      return tmp
    }
    return nil
  end

  def takeLast
    if (@firstNode.empty? && @lastNode.empty?) {
      return nil
    } elsif (!@firstNode.empty? && @lastNode.empty?) {
      tmp        = @firstNode.value
      @firstNode = nil
      return tmp
    } else {
      tmp = @lastNode.value
      if (@lastNode.prev == @firstNode) {
        @lastNode       = nil
        @firstNode.next = nil
      } else {
        @lastNode = @lastNode.prev
        @lastNode.next = nil
      }
      return tmp
    }
    return nil
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
