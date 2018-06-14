class ArraySearcher

  attr_reader :results

  def initialize length
    @length = length
    @results = []
  end

  def visit word
    @results << word if word.size == length
  end
end