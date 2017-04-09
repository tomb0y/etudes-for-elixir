defmodule Etudes.Mixfile do
  use Mix.Project

  def project do
    [app: :etudes,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     preferred_cli_env: preferred_cli_env(),
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger],
     mod: {Etudes.Application, []}]
  end

  defp deps do
    [
      {:dogma, "~> 0.1", only: [:dev, :test]}
    ]
  end

  defp preferred_cli_env do
    ["ci": :test]
  end
end
