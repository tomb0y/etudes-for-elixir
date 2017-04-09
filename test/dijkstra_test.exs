defmodule DijkstraTest do
  use ExUnit.Case

  test "there is a dijkstra module" do
    Etudes.Dijkstra.module_info()
  end

  test "there is an exposed gcd/2 function in Dijkstra" do
    assert Enum.member?(Etudes.Dijkstra.module_info(:exports), {:gcd, 2})
  end

  test "gcd | returns the greatest common divisor of two integers" do
    assert Etudes.Dijkstra.gcd(2, 8) == 2
    assert Etudes.Dijkstra.gcd(14, 21) == 7
    assert Etudes.Dijkstra.gcd(125, 46) == 1
    assert Etudes.Dijkstra.gcd(120, 36) == 12
  end
end
