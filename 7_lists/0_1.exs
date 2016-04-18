defmodule Chapter7 do
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)

  def map([], _func), do: []
  def map([head|tail], func), do: [func.(head) | map(tail, func)]

  def reduce([], value, _func), do: value
  def reduce([head|tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum(list, function) do
    reduce(map(list, function), 0, &(&1 + &2))
  end
end
