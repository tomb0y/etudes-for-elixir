defmodule Etudes.Powers do
  @moduledoc false

  @spec raise(number(), integer()) :: number() | :undefined
  def raise(x, n) when x == 0 and n < 0, do: :undefined
  def raise(_x, n) when n == 0, do: 1
  def raise(x, n) when n == 1, do: x
  def raise(x, n) when n > 1, do: __MODULE__.raise(x, n - 1) * x
  def raise(x, n) when n == -1 and x != 0, do: 1 / x
  def raise(x, n) when n < -1, do: __MODULE__.raise(x, n + 1) / x
end
