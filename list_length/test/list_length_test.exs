defmodule ListLengthTest do
  use ExUnit.Case
  doctest ListLength

  describe "call/1" do
    test "returns list length when list has elements" do
      assert ListLength.call([1, 3, :a, :d, "banana"]) == 5
    end

    test "returns 0 when list is empty" do
      assert ListLength.call([]) == 0
    end
  end
end
