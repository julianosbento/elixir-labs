defmodule EvenListFilterTest do
  use ExUnit.Case
  doctest EvenListFilter

  describe "call/1" do
    test "returns length of even numbers when list of strings has elements" do
      assert EvenListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end

    test "returns 0 when list is empty" do
      assert EvenListFilter.call([]) == 0
    end
  end
end
