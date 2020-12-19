defmodule MixSample do
  @doc """
  Outputs `Hello, World!` every time.
  """
  @spec say(charlist()) :: :ok
  def say(args) do
    args |> Enum.each(&IO.puts("hello! #{&1}"))
  end
end
