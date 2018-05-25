require_relative('node')

class WordSearchTree

  def initialize(elements = [])
    @root = Node.new(nil)
    elements.each do |el|
      index_word(el)
    end
  end
  
  def index_word(word)
    wordArray = word.split('')
    add_child(@root, wordArray)
  end
  
  def add_child(base_node, word)
    letter = word.shift()
    if (letter)
      if (base_node.childrens.key?(letter))
        add_child(base_node.childrens[letter], word)
      else
        base_node.add_children(letter)
        add_child(base_node.childrens[letter], word)
      end
    else
      return
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
  
  def predict(needle)
    tmp = @root
    needle.split("").each do |char|
      if (tmp.childrens.key?(char))
        tmp = tmp.childrens[char]
        if (tmp.childrens.empty?)
          return needle
        else
          # Return the prediction
        end
      else
        return []
      end
    end
  end

end