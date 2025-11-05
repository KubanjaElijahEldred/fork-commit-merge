# Elixir - Easy

defmodule ElixirSumList do
  def sum_list([]), do: 0
  def sum_list([head | tail]), do: head + sum_list(tail)
end
