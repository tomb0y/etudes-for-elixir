defmodule GeomTest do
  use ExUnit.Case

  describe "the Geom module:" do
    test "it exists" do
      Etudes.Geom.module_info()
    end

    test "it exposes the area/3 function" do
      refute Enum.member?(Etudes.Geom.module_info(:exports), {:area, 3})
    end
  end

  describe "the area of a rectangle:" do
    test "it yields the area of a rectangle based on it's length and width" do
      assert Etudes.Geom.area({:rectangle, 3, 4}) == 12
      assert Etudes.Geom.area({:rectangle, 12, 7}) == 84
      assert Etudes.Geom.area({:rectangle, 1.5, 2}) == 3
      assert Etudes.Geom.area({:rectangle, 4, 1.5}) == 6
      assert Etudes.Geom.area({:rectangle, 1.2, 1.2}) == 1.44
    end

    test "it only works with a non-negative rectangle_length" do
      assert_raise FunctionClauseError, fn ->
        Etudes.Geom.area({:rectangle, -1, 1})
      end
    end

    test "it only works with a non-negative rectangle_width" do
      assert_raise FunctionClauseError, fn ->
        Etudes.Geom.area({:rectangle, 1, -1})
      end
    end
  end

  describe "the area of a triangle:" do
    test "it yields the area of a triangle based on it's base and height" do
      assert Etudes.Geom.area({:triangle, 3, 5}) == 7.5
      assert Etudes.Geom.area({:triangle, 12, 7}) == 42
      assert Etudes.Geom.area({:triangle, 4, 1.5}) == 3
      assert Etudes.Geom.area({:triangle, 1.2, 1.2}) == 0.72
    end

    test "it only works with a non-negative triangle_base" do
      assert_raise FunctionClauseError, fn ->
        Etudes.Geom.area({:triangle, -1, 1})
      end
    end

    test "it only works with a non-negative triangle_height" do
      assert_raise FunctionClauseError, fn ->
        Etudes.Geom.area({:triangle, 1, -1})
      end
    end
  end

  describe "the area of an ellipse:" do
    test "it yields the area of an ellipse based on it major and minor radiuses" do
      assert Etudes.Geom.area({:ellipse, 2, 4}) == 25.132741228718345
      assert Etudes.Geom.area({:ellipse, 12, 7}) == 263.89378290154264
      assert Etudes.Geom.area({:ellipse, 4, 1.5}) == 18.84955592153876
      assert Etudes.Geom.area({:ellipse, 1.2, 1.2}) == 4.523893421169302
    end

    test "it only works with a non-negative major_radius" do
      assert_raise FunctionClauseError, fn ->
        Etudes.Geom.area({:ellipse, -1, 1})
      end
    end

    test "it only works with a non-negative minor_radius" do
      assert_raise FunctionClauseError, fn ->
        Etudes.Geom.area({:ellipse, 1, -1})
      end
    end
  end

  describe "the area of an unknown shape" do
    test "it is always 0" do
      assert Etudes.Geom.area({:pentagon, 1, 1}) == 0
      assert Etudes.Geom.area({:circle, -1, 1}) == 0
      assert Etudes.Geom.area({:polygon, 1, -1}) == 0
    end
  end
end
