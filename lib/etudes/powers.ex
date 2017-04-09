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
end
