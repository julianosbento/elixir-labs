defmodule EvenListFilter do
  @moduledoc """
  Documentation for `EvenListFilter`.
  """

  @doc """
  Even list filter module.

  ## Examples

      iex> EvenListFilter.call([])
      0

      iex> EvenListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      3
  """

  def call(list), do: filter(list)

  defp filter(list),
    do:
      length(
        Enum.filter(list, fn element ->
          if is_tuple(Integer.parse(element)), do: rem(elem(Integer.parse(element), 0), 2) !== 0
        end)
      )
end
