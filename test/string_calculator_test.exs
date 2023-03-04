defmodule StringCalculatorTest do
  use ExUnit.Case
  doctest StringCalculator
  test "can add 2 numbers" do
    assert StringCalculator.add("1,2") == 3
  end
  test "can add 3 numbers" do
    assert StringCalculator.add("1,2,3") == 6
  end
end
