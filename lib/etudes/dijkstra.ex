defmodule Etudes.Dijkstra do
  @moduledoc false

  @spec gcd(integer(), integer()) :: integer()
  def gcd(m, n) when m == n, do: m
  def gcd(m, n) when m > n, do: gcd(m - n, n)
  def gcd(m, n) when m <= n, do: gcd(m, n - m)
end
