defmodule Bottles do
  @moduledoc """
  Counts down from num to 0 bottles
  """

  @doc """
  A little refresher for tail call recursive functions.

  ## Examples

    iex(1)> Bottles.count_bottles(3)
    3 bottles  left on the wall; take one down, pass it around, 2 bottles  left
    2 bottles  left on the wall; take one down, pass it around, One bottle left
    One bottle left on the wall; take one down, pass it around, Time to go bottle shopping left
    :ok

  """


  def bottle(0), do: "Time to go bottle shopping"
  def bottle(1), do: "One bottle left"
  def bottle(num) do
    "#{num} bottles left"
  end

  def count_bottles(0), do: :ok
  def count_bottles(num) do
    IO.puts "#{bottle(num)} left on the wall; take one down, pass it around, #{bottle(num - 1)}"
    count_bottles(num-1)
  end
end
