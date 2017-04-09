defmodule Etudes.Geom do
  @moduledoc false

  @spec area(atom(), number(), number()) :: number()
  def area(:rectangle, rectangle_length \\ 1, rectangle_width \\ 1) do
    rectangle_area(rectangle_length, rectangle_width)
  end

  @spec rectangle_area(number(), number()) :: number()
  defp rectangle_area(rectangle_length, rectangle_width) do
    rectangle_length * rectangle_width
  end
end
