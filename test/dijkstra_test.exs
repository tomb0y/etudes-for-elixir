defmodule DijkstraTest do
  use ExUnit.Case

  describe "the Dijkstra module:" do
    test "it exits " do
      Etudes.Dijkstra.module_info()
    end

    test "exposes the gcd/2 function" do
      assert Enum.member?(Etudes.Dijkstra.module_info(:exports), {:gcd, 2})
    end
  end

  describe "gcd:" do
    test "it takes two integers, m and n, and returns their greatest common divisor" do
      assert Etudes.Dijkstra.gcd(2, 8) == 2
      assert Etudes.Dijkstra.gcd(14, 21) == 7
      assert Etudes.Dijkstra.gcd(125, 46) == 1
      assert Etudes.Dijkstra.gcd(120, 36) == 12
    end
  end
end
