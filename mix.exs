defmodule Decoction.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :decoction,
     version: @version,
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps,
     name: "Decoction",
     docs: [source_ref: "v#{@version}", main: "Decoction", logo: "logo.png",
            extras: ["README.md"]],
     source_url: "https://github.com/aarvay/decoction"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.10", only: :dev}]
  end

  defp description do
    """
    Decoction is a static site generator written in Elixir
    """
  end

  defp package do
    [maintainers: ["Vignesh Rajagopalan"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/aarvay/decoction"}]
  end
end
