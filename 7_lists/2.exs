defmodule MyList do
  def max(list), do: _max(list, 0)

  defp _max([], current), do: current
  defp _max([head|tail], current) when head > current, do: _max(tail, head)
  defp _max([head|tail], current) when head <= current, do: _max(tail, current)
end
