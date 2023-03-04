defmodule StringCalculator do
  @moduledoc """
  Documentation for `StringCalculator`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> StringCalculator.hello()
      :world

  """
  def hello do
    :world
  end

  def add(numbers) do
    Enum.reduce(String.split(numbers, ","), 0, fn(n, acc) -> String.to_integer(n) + acc end)
  end
end
