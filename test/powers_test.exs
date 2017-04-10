defmodule PowersTest do
  use ExUnit.Case

  describe "the Powers module:" do
    test "it exists" do
      Etudes.Powers.module_info()
    end

    test "it exposes the raise/2 function" do
      assert Enum.member?(Etudes.Powers.module_info(:exports), {:raise, 2})
    end

    test "exposes the nth_root/2 function" do
      assert Enum.member?(Etudes.Powers.module_info(:exports), {:nth_root, 2})
    end
  end

  describe "raise:" do
    test "it takes parameters x and n and returns the value of x^n" do
      assert Etudes.Powers.raise(3, 0) == 1
      assert Etudes.Powers.raise(42, 0) == 1
      assert Etudes.Powers.raise(3, 1) == 3
      assert Etudes.Powers.raise(42, 1) == 42
      assert Etudes.Powers.raise(2, 2) == 4
      assert Etudes.Powers.raise(5, 3) == 125
      assert Etudes.Powers.raise(3, -1) == 1 / 3
      assert Etudes.Powers.raise(7, -1) == 1 / 7
      assert Etudes.Powers.raise(5, -2) == 1 / 25
      assert Etudes.Powers.raise(2, -3) == 1 / 8
      assert Etudes.Powers.raise(0, -4) == :undefined
      assert Etudes.Powers.raise(0, -1) == :undefined
    end
  end

  describe "nth_root:" do
    test "it takes parameters x and n and returns the nth root of x" do
      assert Etudes.Powers.nth_root(3, 1) == 3
      assert Etudes.Powers.nth_root(42, 1) == 42
      assert Etudes.Powers.nth_root(64, 2) == 8
      assert Etudes.Powers.nth_root(27, 3) == 3
      assert Etudes.Powers.nth_root(2, 2) == 1.4142135623730951
    end
  end
end
