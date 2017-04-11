defmodule Mix.Tasks.Ci do
  @moduledoc "Mix tasks for continous integration."

  use Mix.Task

  @shortdoc "Run dogma and tests together."
  def run(_) do
    Mix.shell.info "\n\e[35mRunning dogma:\e[0m"
    Mix.Tasks.Dogma.run([])

    Mix.shell.info "\n\e[35mRunning exunit:\e[0m\n"
    Mix.Tasks.Test.run(["--trace"])

    Mix.shell.info "\n\e[35mRunning espec:\e[0m\n"
    Mix.Tasks.Espec.run(["--trace"])
  end
end
