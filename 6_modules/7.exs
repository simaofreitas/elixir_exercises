defmodule Functions do
  def float_to_string(num) do
    :erlang.float_to_list(num, [decimals: 2])
  end
end
