defmodule PowersSpec do
  use ESpec

  describe "Powers module" do
    it "exists", do: Etudes.Powers.module_info()

    it "exposes the raise/2 function" do
      expect Etudes.Powers.module_info(:exports) |> to(have {:raise, 2})
    end

    it "exposes the nth_root/2 function" do
      expect Etudes.Powers.module_info(:exports) |> to(have {:nth_root, 2})
    end

    describe "raise/2" do
      it "takes parameters x and n and returns the value of x^n" do
        expect Etudes.Powers.raise(3, 0)  |> to(eql 1)
        expect Etudes.Powers.raise(42, 0) |> to(eql 1)
        expect Etudes.Powers.raise(3, 1)  |> to(eql 3)
        expect Etudes.Powers.raise(42, 1) |> to(eql 42)
        expect Etudes.Powers.raise(2, 2)  |> to(eql 4)
        expect Etudes.Powers.raise(5, 3)  |> to(eql 125)
        expect Etudes.Powers.raise(3, -1) |> to(eql 1 / 3)
        expect Etudes.Powers.raise(7, -1) |> to(eql 1 / 7)
        expect Etudes.Powers.raise(5, -2) |> to(eql 1 / 25)
        expect Etudes.Powers.raise(2, -3) |> to(eql 1 / 8)
        expect Etudes.Powers.raise(0, -4) |> to(eql :undefined)
        expect Etudes.Powers.raise(0, -1) |> to(eql :undefined)
      end
    end

    describe "nth_root/2" do
      it "takes parameters x and n and returns the nth root of x" do
        expect Etudes.Powers.nth_root(3, 1)  |> to(eq 3)
        expect Etudes.Powers.nth_root(42, 1) |> to(eq 42)
        expect Etudes.Powers.nth_root(64, 2) |> to(eq 8)
        expect Etudes.Powers.nth_root(27, 3) |> to(eq 3)
        expect Etudes.Powers.nth_root(2, 2)  |> to(eq 1.4142135623730951)
      end
    end
  end
end
