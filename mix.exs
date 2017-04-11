defmodule Etudes.Mixfile do
  use Mix.Project

  def project do
    [app: :etudes,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     preferred_cli_env: preferred_cli_env(),
     dialyzer: [ flags: ["-Wunmatched_returns", :error_handling, :race_conditions, :underspecs]],
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger],
     mod: {Etudes.Application, []}]
  end

  defp deps do
    [
      {:espec, github: "antonmi/espec", only: :test},
      {:dogma, "~> 0.1", only: [:dev, :test]},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end

  defp preferred_cli_env do
    [ci: :test, espec: :test]
  end
end
