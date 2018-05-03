defmodule FileFinder do
  def recursive(dir \\ ".", needle \\ ~r'README.md') do
    array = []
    Enum.each(File.ls!(dir), fn file ->
      fname = "#{dir}/#{file}"
      if !File.dir?(fname) && Regex.match?(needle, file), do: array ++ [fname]
      if File.dir?(fname), do: recursive(fname)
    end)
  end
end

IO.puts FileFinder.recursive('/users/bastien/Sites/POO2')
