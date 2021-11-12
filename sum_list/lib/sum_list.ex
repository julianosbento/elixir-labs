defmodule SumList do
  @moduledoc """
  Documentation for `SumList`.
  """

  @doc """
  Sum list elements.

  ## Examples

      iex> SumList.call([1, 2, 3])
      6

  """
  def call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail,acc)
  end
end
