handle_open = fn
  {:ok, file} -> "First Line: #{IO.read(file, :line)}"
  {_, error}  -> "Error #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open('existing.txt'))
IO.puts handle_open.(File.open('stuff.txt'))
