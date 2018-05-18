class Node

  def initialize(val, parent = nil, childrens = {})
    @parent = parent
    @childrens = childrens
    @value = val
  end

  attr_accessor(:parent, :value)

  def add_children(char)
    @childrens[char] = Node.new(char, self)
  end

end