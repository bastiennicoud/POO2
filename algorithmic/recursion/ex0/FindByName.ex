defmodule FileFinder do
  def recursive(dir \\ ".", needle \\ ~r'README.md') do
    array = []
    Enum.each(File.ls!(dir), fn file ->
      fname = "#{dir}/#{file}"
      if !File.dir?(fname), do: array ++ [fname]
      if File.dir?(fname), do: recursive(fname, needle)
    end)
  end

  def find(dir \\ ".", needle \\ 'README.md', accumulator) do
    Enum.each(File.ls!(dir), fn file ->
      fname = "#{dir}/#{file}"
      if Regex.match?(~r/README.md/, file), do: accumulator ++ fname
      if File.dir?(fname), do: find(fname, needle, accumulator)
    end
  end

  def match(name, regex) do
    if Regex.match?(regex, name)
  end
end

accum = []
IO.puts FileFinder.find('/users/bastien/Sites/POO2', ~r/README.md/, accum)
