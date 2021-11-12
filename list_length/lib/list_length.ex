defmodule ListLength do
  @moduledoc """
  Documentation for `ListLength`.
  """

  @doc """
  List length challenge.

  ## Examples

      iex> ListLength.call([1, 2, 3, 4, 5])
      5

      iex> ListLength.call([])
      0
  """
  def call(list), do: length(list, 0)

  defp length([], acc), do: acc

  defp length([_head | tail], acc) do
    acc = acc + 1
    length(tail, acc)
  end
end
