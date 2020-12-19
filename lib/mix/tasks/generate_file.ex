defmodule Mix.Tasks.Gen.Fib do
  use Mix.Task
  import Mix.Generator

  @template_file "lib/mix/tasks/template/fib.eex"
  @output_file "lib/fib.csv"

  @impl Mix.Task
  def run([n]) do
    n |> String.to_integer() |> generate()
  end

  defp generate(n) do
    copy_template(
      @template_file,
      @output_file,
      fib_list: MixSample.Fib.fib_list(n)
    )
  end
end
