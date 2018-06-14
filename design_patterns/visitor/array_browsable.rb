class ArrayBrowsable < Array

  def browse (searcher)
    each { |word| searcher.visit(word) }
  end

end
