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

  test "area of a rectangle | only accepts non-negative rectangle_length" do
    assert_raise FunctionClauseError, fn ->
      Etudes.Geom.area(:rectangle, -1, 1)
    end
  end

  test "area of a rectangle | only accepts non-negative rectangle_width" do
    assert_raise FunctionClauseError, fn ->
      Etudes.Geom.area(:rectangle, 1, -1)
    end
  end

  test "area of a triangle | yields the area of a triangle based on it's base and height" do
    assert Etudes.Geom.area(:triangle, 3, 5) == 7.5
    assert Etudes.Geom.area(:triangle, 12, 7) == 42
    assert Etudes.Geom.area(:triangle, 4, 1.5) == 3
    assert Etudes.Geom.area(:triangle, 1.2, 1.2) == 0.72
  end

  test "area of a triangle | only accepts non-negative triangle_base" do
    assert_raise FunctionClauseError, fn ->
      Etudes.Geom.area(:triangle, -1, 1)
    end
  end

  test "area of a triangle | only accepts non-negative triangle_height" do
    assert_raise FunctionClauseError, fn ->
      Etudes.Geom.area(:triangle, 1, -1)
    end
  end

  test "area of an ellipse | yields the area of an ellipse based on it major and minor radiuses" do
    assert Etudes.Geom.area(:ellipse, 2, 4) == 25.132741228718345
    assert Etudes.Geom.area(:ellipse, 12, 7) == 263.89378290154264
    assert Etudes.Geom.area(:ellipse, 4, 1.5) == 18.84955592153876
    assert Etudes.Geom.area(:ellipse, 1.2, 1.2) == 4.523893421169302
  end

  test "area of an ellipse | only accepts non-negative major_radius" do
    assert_raise FunctionClauseError, fn ->
      Etudes.Geom.area(:ellipse, -1, 1)
    end
  end

  test "area of an ellipse | only accepts non-negative minor_radius" do
    assert_raise FunctionClauseError, fn ->
      Etudes.Geom.area(:ellipse, 1, -1)
    end
  end
end
