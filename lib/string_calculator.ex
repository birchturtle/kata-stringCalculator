defmodule StringCalculator do
  @moduledoc """
  Documentation for `StringCalculator`.
  """
  @doc """
  """

  def add(numbers) do
    Regex.split(~r/[,\n]/, numbers)
    |> Enum.map(fn s -> String.to_integer(s) end)
    |> Enum.reduce(0, fn(n, acc) -> n + acc end)
  end
end
