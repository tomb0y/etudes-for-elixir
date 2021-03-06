defmodule Etudes.Geom do
  @moduledoc false

  @spec area({atom(), number(), number()}) :: number()
  def area({shape, dimension_a, dimension_b}) do
    area(shape, dimension_a, dimension_b)
  end

  @spec area(atom(), number(), number()) :: number()
  defp area(shape, _, _) when not shape in [:rectangle, :triangle, :ellipse] do
    0
  end
  defp area(shape, dimension_a, dimension_b) when dimension_a >= 0 and dimension_b >= 0 do
    case shape do
      :rectangle -> dimension_a * dimension_b
      :triangle -> dimension_a * dimension_b / 2
      :ellipse -> dimension_a * dimension_b * :math.pi()
    end
  end
end
