require_relative('node')

class WordSearchTree

  def initialize(elements = [])
    @root = Node.new(nil)
    elements.each do |el|
      add_word(el)
    end
  end

  def add_word(word)
    tmp = @root
    word.split("").each do |char|
      if (tmp.childrens.key?(char))
        tmp = tmp.childrens[char]
      else
        tmp.add_children(char)
        tmp = tmp.childrens[char]
      end
    end
  end

  def search(needle)
    tmp = @root
    needle.split("").each do |char|
      if (tmp.childrens.key?(char))
        tmp = tmp.childrens[char]
        if (tmp.childrens.empty?)
          return true
        end
      else
        return false
      end
    end
  end

  def recompose_word(leafNode, accumulator)
    accumulator = `#{leafNode.value}#{accumulator}`
    if leafNode.parent.nil?
      accumulator
    else
      recompose_word(leafNode.parent, accumulator)
    end
  end

end