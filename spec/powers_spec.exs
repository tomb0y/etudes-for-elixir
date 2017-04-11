defmodule PowersSpec do
  use ESpec

  describe "Powers module" do
    it "exists", do: Etudes.Powers.module_info()

    @exposed_methods_to_test [%{title: 'raise/2', descriptor: {:raise, 2}},
                              %{title: 'nth_root/2', descriptor: {:nth_root, 2}}]

    Enum.map @exposed_methods_to_test, fn(method) ->
      it "exposes the #{method[:title]} function" do
        exposed_methods = Etudes.Powers.module_info(:exports)

        expect exposed_methods |> to(have unquote(method[:descriptor]))
      end
    end

    describe "raise/2" do
      @raise_2_testcases [%{x: 3, n: 0, result: 1},
                          %{x: 42, n: 0, result: 1},
                          %{x: 3, n: 1, result: 3},
                          %{x: 42, n: 1, result: 42},
                          %{x: 2, n: 2, result: 4},
                          %{x: 5, n: 3, result: 125},
                          %{x: 3, n: -1, result: 1 / 3},
                          %{x: 7, n: -1, result: 1 / 7},
                          %{x: 5, n: -2, result: 1 / 25},
                          %{x: 2, n: -3, result: 1 / 8},
                          %{x: 0, n: -4, result: :undefined},
                          %{x: 0, n: -1, result: :undefined}]

      Enum.each @raise_2_testcases, fn(testcase) ->
        it "with parameters x: #{testcase[:x]} and n: #{testcase[:n]} and returns the nth power of x" do
          result = Etudes.Powers.raise(unquote(testcase[:x]), unquote(testcase[:n]))

          expect result |> to(eql unquote(testcase[:result]))
        end
      end
    end

    describe "nth_root/2" do
      @nth_root_2_testcases [%{x: 3, n: 1, result: 3},
                             %{x: 42, n: 1, result: 42},
                             %{x: 64, n: 2, result: 8.0},
                             %{x: 27, n: 3, result: 3.0},
                             %{x: 2, n: 2, result: 1.4142135623730951}]

      Enum.each @nth_root_2_testcases, fn(testcase) ->
        it "with parameters x: #{testcase[:x]} and n: #{testcase[:n]} and returns the nth root of x" do
          result = Etudes.Powers.nth_root(unquote(testcase[:x]), unquote(testcase[:n]))

          expect result |> to(eql unquote(testcase[:result]))
        end
      end
    end
  end
end
