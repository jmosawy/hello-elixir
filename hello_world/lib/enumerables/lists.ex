defmodule HelloWorld.Enumerables.Lists do
  @moduledoc """
  Function Summary:

  1. sum_simple
  2. sum_tail_rec
  """

  @doc """
  Returns the sum of numbers in a list
  """
  def sum_simple([]), do: 0

  def sum_simple([h | t]), do: h + sum_simple(t)

  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc
  def sum_tail_rec([h | t], acc), do: sum_tail_rec(t, acc + h)

  def map(elements, func, acc \\ [])
  def map([], _, acc), do: acc
  def map([h | t], func, acc), do: map(t, func, [acc | func.(h)])
end
