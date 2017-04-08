defmodule Etudes.Geom do
  @moduledoc false

  @spec area(number(), number()) :: number()

  def area(rectangle_length \\ 1, rectangle_width \\ 1) do
    rectangle_length * rectangle_width
  end
end
