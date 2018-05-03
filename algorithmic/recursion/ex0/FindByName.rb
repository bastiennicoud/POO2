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
        array << find_files_by_needle(path, needle)
      end
    end
  end
  # Return plain array with all matching files
  return array
end

# Launch the search
results = find_files_by_needle('/users/bastien/Sites/POO2/', /README.md/)

# Puts results on console
puts results