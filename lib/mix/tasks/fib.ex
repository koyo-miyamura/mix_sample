defmodule MixSample.Fib do
  @spec fib_list(integer) :: list(integer())
  def fib_list(0) do
    [0]
  end

  def fib_list(1) do
    [1, 0]
  end

  def fib_list(n) do
    2..n |> Enum.reduce([1, 0], fn _, acc -> fib_sum(acc) ++ acc end)
  end

  defp fib_sum([a | [b | _]]), do: [a + b]
end
