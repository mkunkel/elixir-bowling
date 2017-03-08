defmodule Bowling do
  @moduledoc """
  Documentation for Bowling.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Bowling.hello
      :world

  """

  def update_score([scores], new) do
    cond do
      Enum.count(scores) >= 10 -> IO.puts "Game is over, cannot add any more scores"
      true -> scores ++ [new] |> calculate_score |> IO.puts
    end
  end

  def update_score(scores, new) do
    update_score([scores], new)
  end

  defp calculate_score([head | tail]) do
    calculate_score(head, tail)
  end

  defp calculate_score(total, [head | tail]) do
    head + total |> calculate_score(tail)
  end

  defp calculate_score(total, []) do
    total
  end
end
