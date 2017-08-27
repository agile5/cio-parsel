defmodule Parsel.Mixfile do
  use Mix.Project

  def project do
    [
      app: :parsel,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:nimble_csv, "~> 0.2.0"},
      {:flow, "~> 0.12.0"}
    ]
  end
end
