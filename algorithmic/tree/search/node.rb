class Node
  
  def initialize(parent = nil, val)
    @parent = parent
    @value = val
  end
  
  attr_accessor(:parent, :value)
  
end