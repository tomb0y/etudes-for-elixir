defmodule PowersTest do
  use ExUnit.Case

  test "there is a powers module" do
    Etudes.Powers.module_info()
  end

  test "there is an exposed raise/2 function in Powers" do
    assert Enum.member?(Etudes.Powers.module_info(:exports), {:raise, 2})
  end

  test "raise | takes parameters x and n and returns the value of x^n" do
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
