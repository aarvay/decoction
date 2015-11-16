defmodule <%= module_name %>.Mixfile do
  use Mix.Project

  def project do
    [app: :<%= app_name %>,
     version: "0.0.1",
     elixir: "~> 1.1",
     deps: deps]
  end

  defp deps do
    [{:decoction, github: "aarvay/decoction"}]
  end
end
