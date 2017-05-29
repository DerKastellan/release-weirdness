defmodule Sample.Mixfile do
  use Mix.Project

  def project do
    [app: :sample,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger],
     mod: {Sample, []}]
  end

  defp deps do
    [{:distillery,      "~> 1.4"}]
  end
end
