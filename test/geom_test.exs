defmodule GeomTest do
  use ExUnit.Case

  test "there is a geom module" do
    Etudes.Geom.module_info()
  end

  test "area of a rectangle | yields the area of a rectangle based on it's length and width" do
    assert Etudes.Geom.area(:rectangle, 3, 4) == 12
    assert Etudes.Geom.area(:rectangle, 12, 7) == 84
    assert Etudes.Geom.area(:rectangle, 1.5, 2) == 3
    assert Etudes.Geom.area(:rectangle, 4, 1.5) == 6
    assert Etudes.Geom.area(:rectangle, 1.2, 1.2) == 1.44
  end

  test "area of a rectangle | rectangle_width has the default value of 1" do
    assert Etudes.Geom.area(:rectangle, 7) == 7
    assert Etudes.Geom.area(:rectangle, 15) == 15
  end

  test "area of a rectangle | rectangle_length has the default value of 1" do
    assert Etudes.Geom.area(:rectangle) == 1
  end
end
