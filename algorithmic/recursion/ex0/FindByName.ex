defmodule FileFinder do
  def find_files_matches_needle(path, needle) do
    cond do
      File.regular?(path) -> [path]
      File.dir?(path) ->
        File.ls!(path)
        |> Enum.map(&Path.join(path, &1))
        |> Enum.map(&ls_r/1)
        |> Enum.concat
      true -> []
    end
  end
end

IO.puts FileFinder.find_files_matches_needle('/users/bastien/Sites/POO2/', /README.md/)
