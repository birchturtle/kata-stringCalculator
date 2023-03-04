defmodule StringCalculatorTest do
  use ExUnit.Case
  doctest StringCalculator

  describe "basic requirements" do
    test "can add 2 numbers" do
      assert StringCalculator.add("1,2") == 3
    end
    test "can add 3 numbers" do
      assert StringCalculator.add("1,2,3") == 6
    end
   test "can add 9 numbers" do
      assert StringCalculator.add("3,3,3,3,3,3,3,3,3") === 27
    end
  end

  describe "'advanced' requirements" do
    test "it allows newlines as delimiters" do
      assert StringCalculator.add("1\n2,3") == 6
    end
    test "no double delimiters allowed" do
      assert_raise(ArgumentError, fn ->
        StringCalculator.add("1,\n2,3")
      end)
      assert_raise(ArgumentError, fn ->
        StringCalculator.add("1\n,2,3")
      end)
    end
  end
end
