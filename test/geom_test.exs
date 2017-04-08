defmodule GeomTest do
  use ExUnit.Case

  test 'there is a geom module' do
    Etudes.Geom.module_info()
  end

  test 'the geom module has the area/2 function' do
    geom_methods = Etudes.Geom.module_info(:exports)

    assert Enum.member?(geom_methods, { :area, 2 })
  end
end
