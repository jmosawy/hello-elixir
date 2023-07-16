defmodule HelloWorld.Recursion.PrintDigits do
  def upTo num do
    IO.puts(num)

    cond do
      num == 0 -> :ok
      num > 0 -> upTo(num - 1)
    end
  end
end
