defmodule StringCalculator do
  @moduledoc """
  Documentation for `StringCalculator`.
  """
  @doc """
  """

  def add(numbers) do
    numbers
    |> split_number_string()
    |> Enum.reduce(0, fn(n, acc) -> String.to_integer(n) + acc end)
  end
  defp split_number_string(numberstring) do
    Regex.split(~r/[,\n]/, numberstring)
  end
end
