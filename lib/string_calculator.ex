defmodule StringCalculator do
  @moduledoc """
  Documentation for `StringCalculator`.
  """
  @doc """
  """

  def add(numbers) do
    Enum.reduce(split_string(numbers), 0, fn(n, acc) -> String.to_integer(n) + acc end)
  end
  defp split_string(numberstring) do
    Regex.split(~r/[,\n]/, numberstring)
  end
end
