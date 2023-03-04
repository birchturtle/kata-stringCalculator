defmodule StringCalculatorTest do
  use ExUnit.Case
  doctest StringCalculator

  test "greets the world" do
    assert StringCalculator.hello() == :world
  end
  test "can add 2 numbers" do
    assert StringCalculator.add("1,2") == 3
  end
end
