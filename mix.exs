defmodule Prime.MixProject do
  use Mix.Project

  @doc """
  Project `project/0` function
  """
  @spec project :: keyword
  def project do
    [
      app: :prime,
      version: "0.0.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "A library for dealing with prime numbers",
      package: package()
    ]
  end

  @spec package :: keyword
  defp package do
    [
      name: :prime,
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["MainShayne233"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/MainShayne233/prime"}
    ]
  end

  @doc """
  Project `application/0` function
  """
  @spec application :: list
  def application, do: []

  @spec deps :: [{atom, String.t()}]
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
