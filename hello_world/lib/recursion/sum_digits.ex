defmodule HelloWorld.Recursion.SumDigits do
  def upTo(num \\ 0) do
    cond do
      num == 0 -> 0
      num == 1 -> 1
      num > 1 -> num + upTo(num - 1)
    end
  end
end
