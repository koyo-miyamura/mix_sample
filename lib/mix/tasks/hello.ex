defmodule Mix.Tasks.Hello do
  use Mix.Task

  @shortdoc "Simply calls the MixSample.say/0 function."
  @impl Mix.Task
  @spec run(charlist()) :: :ok
  def run(args) do
    # This will start our application
    Mix.Task.run("app.start")

    MixSample.say(args)
  end
end
