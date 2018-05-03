# Search a filename matching a needle
def find_files_by_needle (basePath, needle)
  array = []
  Dir.foreach(basePath) do |element|
    unless element == '.' || element == '..'
      path = File.join(basePath, element)
      if File.file?(path) && element =~ needle
       array << path
      elsif File.directory? path
        array << find_files_by_needle(path, needle)
      end
    end
  end
  return array
end

# Launch the search
results = find_files_by_needle('/users/bastien/Sites/POO2/', /README.md/)

# Puts results on console
puts results