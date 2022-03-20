defmodule HelloWorldClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :helloworldclient,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {HelloWorldClient.Application, []},
      extra_applications: [:logger, :grpc],
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      #{:gun, "~> 2.0.0", hex: :grpc_gun},
      {:grpc, github: "tony612/grpc-elixir"},
      {:protobuf, github: "elixir-protobuf/protobuf-elixir", override: true},
      {:cowlib, "~> 2.8.0", hex: :grpc_cowlib, override: true},
    ]
  end
end
