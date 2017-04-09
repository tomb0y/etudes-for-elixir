defmodule Etudes.Geom do
  @moduledoc false

  @spec area(atom(), number(), number()) :: number()
  def area(shape, dimension_a \\ 1, dimension_b \\ 1)
  def area(:rectangle, rectangle_length, rectangle_width) when rectangle_length >= 0 and rectangle_width >= 0 do
    rectangle_area(rectangle_length, rectangle_width)
  end
  def area(:triangle, triangle_base, triangle_height) do
    triangle_base * triangle_height / 2
  end
  def area(:ellipse, major_radius, minor_radius) do
    major_radius * minor_radius * :math.pi()
  end

  @spec rectangle_area(number(), number()) :: number()
  defp rectangle_area(rectangle_length, rectangle_width) do
    rectangle_length * rectangle_width
  end
end
