defmodule HelloWorldClient.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    {:ok, channel} = GRPC.Stub.connect("localhost:50051", interceptors: [GRPC.Logger.Client])

    reply =
      channel
      |> Helloworld.Greeter.Stub.say_hello(Helloworld.HelloRequest.new(name: "grpc-elixir"))

    IO.inspect(reply)

    children = [
      # {GRPC.Server.Supervisor, [{Helloworld.Endpoint, 50051}]}
    ]

    # # See https://hexdocs.pm/elixir/Supervisor.html
    # # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Grpc.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
