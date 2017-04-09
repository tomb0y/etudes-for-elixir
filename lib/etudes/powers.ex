defmodule Etudes.Powers do
  @moduledoc false

  import Kernel, except: [raise: 2, raise: 3]

  @spec raise(number(), integer()) :: number() | :undefined
  def raise(x, n) when x == 0 and n < 0, do: :undefined
  def raise(_x, n) when n == 0, do: 1
  def raise(x, n) when n > 0, do: raise(x, n, 1)
  def raise(x, n) when n == -1 and x != 0, do: 1 / x
  def raise(x, n) when n < -1, do: raise(x, n + 1) / x

  @spec raise(number(), integer(), number()) :: number()
  defp raise(_x, n, acc) when n == 0, do: acc
  defp raise(x, n, acc) when n > 0, do: raise(x, n - 1, x * acc)

  @spec nth_root(number(), integer()) :: number()
  def nth_root(x, n) when n == 1, do: x
  def nth_root(x, n) when n > 1, do: nth_root(x, n, x / 2)

  @spec nth_root(number(), integer(), number()) :: number()
  defp nth_root(x, n, a) do
    f = raise(a, n) - x
    f_prime = n * raise(a, n - 1)
    next_a = a - f / f_prime
    change = abs(next_a - a)

    if change < 0.000000001, do: next_a, else: nth_root(x, n, next_a)
  end
end
