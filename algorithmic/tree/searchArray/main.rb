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

tree_index = parse_file('../search/functions.txt')

Benchmark.bmbm do |x|
  x.report("Search 'agentenabled' in an array :           ") do
    tree_index.include?("agentenabled")
  end
  x.report("Search 'attraccessorwithdefault' in an array :") do
    tree_index.include?("attraccessorwithdefault")
  end
  x.report("Search 'xchr' in an array :                   ") do
    tree_index.include?("xchr")
  end
  x.report("Search 'tryenter' in an array :               ") do
    tree_index.include?("tryenter")
  end
end