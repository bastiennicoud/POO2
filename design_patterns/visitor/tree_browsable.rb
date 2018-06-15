require_relative('../../algorithmic/tree/search/word_search_tree')
require_relative('../../algorithmic/tree/search/node')

class TreeBrowsable < WordSearchTree

  class Node < Node
    def browse visitor, partial_word
      @children.each_with_index do |child, index|
        # If the  child don't exist, pass th the next iteration
        next unless child
        # Chek if is a word
        if child.final
          visitor.visit(partial_word + (BASE+index).chr)
        end
        # Recurse the call
        child.browse (visitor ,partial_word + (BASE+index).chr)
      end
    end
  end

  def initialize elements = []
    @root = Node.new(nil)
    super elements
  end

  def browse searcher
    @root.browse ''
  end
end
