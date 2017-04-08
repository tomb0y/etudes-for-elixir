defmodule GeomTest do
  use ExUnit.Case

  test "there is a geom module" do
    Etudes.Geom.module_info()
  end

  test "the geom module has the area/2 function" do
    geom_methods = Etudes.Geom.module_info(:exports)

    assert Enum.member?(geom_methods, { :area, 2 })
  end

  test "geom area/2 | yields the area of a rectangle" do
    assert Etudes.Geom.area(3, 4) == 12
    assert Etudes.Geom.area(12, 7) == 84
    assert Etudes.Geom.area(1.5, 2) == 3
    assert Etudes.Geom.area(4, 1.5) == 6
    assert Etudes.Geom.area(1.2, 1.2) == 1.44
  end

  test "geom area/2 | rectangle_width has the default value of 1" do
    assert Etudes.Geom.area(7) == 7
    assert Etudes.Geom.area(15) == 15
  end

  test "geom area/2 | rectangle_length has the default value of 1" do
    assert Etudes.Geom.area() == 1
  end
end
