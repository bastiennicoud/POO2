# Search a filename matching a needle
def find_files_by_needle (basePath, needle)
  array = []
  # Iterates all folders
  Dir.foreach(basePath) do |element|
    # Ingnore . and .. pseudo files
    unless element == '.' || element == '..'
      # Joins the full path
      path = File.join(basePath, element)
      # Check the file name
      if File.file?(path) && element =~ needle
       array << path
      # In case of folder, recurse the function
      elsif File.directory? path
        array.concat(find_files_by_needle(path, needle))
      end
    end
  end
  # Return plain array with all matching files
  array
end

# Version with reduce
def find_files_by_needle_reduce(starts, path)
  Dir.glob(File.join(path, '*')).reduce([]) do |files, item|
    if File.file?(item) && File.basename(item).start_with?(starts)
      files << File.expand_path(item)
    elsif File.directory?(item)
      files.concat(find_files_by_needle_reduce(starts, item))
    end
    files
  end
end

# Launch the search
results = find_files_by_needle('/users/bastien/Sites/POO2/', /README.md/)

# Puts results on console
puts results