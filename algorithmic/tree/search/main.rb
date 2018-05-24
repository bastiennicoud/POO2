require_relative('word_search_tree')
require 'benchmark'

def parse_file(path)
  words = []
  f = File.open(path, "r")
  f.each_line do |line|
    words << line.chomp
  end
  f.close
  return words
end

tree_index = WordSearchTree.new(parse_file('./functions.txt'))

Benchmark.bm do |x|
  x.report('Search agentenabled in an array :') do
    tree_index.search("agentenabled")
  end
  x.report('Search attraccessorwithdefault in an array :') do
    tree_index.search("attraccessorwithdefault")
  end
  x.report('Search xchr in an array :') do
    tree_index.search("xchr")
  end
  x.report('Search tryenter in an array :') do
    tree_index.search("tryenter")
  end
end