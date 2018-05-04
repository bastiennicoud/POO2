class Node

  @value = Object
  @next = String
  @prev = String

  def initialize(value, nextNode = nil, prevNode = nil)
    @value = value
    @next = nextElement
    @prev = prevElement
  end

  attr_accessor :next, :prev

  def first?
    if @prev == nil
  end

  def last?
    if @next == nil
  end

end
