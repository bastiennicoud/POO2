require_relative('node')

class WordSearchTree

  # Constructor
  # * Create base node
  # * Index words passed in parameter
  def initialize(elements = [])
    @root = Node.new(nil)
    elements.each do |el|
      index_word(el)
    end
  end

  # Index a word in the tree
  def index_word(word)
    wordArray = word.split('')
    add_child(@root, wordArray)
  end

  # Recursively add the letters of the word in the tree
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
      base_node.final = true
      return
    end
  end

  # Check if the word exists in the tree
  def search(needle)
    tmp = @root
    needle.split("").each do |char|
      if (tmp.childrens.key?(char))
        tmp = tmp.childrens[char]
        if (tmp.childrens.empty? && tmp.final == true)
          true
        else
          false
        end
      else
        false
      end
    end
  end

  # Return all possible ends for the needle
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