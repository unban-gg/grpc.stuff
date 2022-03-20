# What's this?

This was a little thing I made to help me understand gRPC in both Rust and Elixir.
The server is in Rust and is contained in the [src](/src) directory. And the client
is located in the [grpc_stuff][/grpc_stuff] directory. Protoes are obviously in the
[proto](/proto) directory. 

Below is all resources I used to help understand this:
- https://github.com/hyperium/tonic/blob/master/examples/src/helloworld/server.rs
- https://github.com/hyperium/tonic/blob/master/examples/helloworld-tutorial.md
- https://github.com/fullstorydev/grpcurl
- https://github.com/hyperium/tonic/blob/master/examples/proto/helloworld/helloworld.proto
- https://docs.rs/tonic/0.6.2/tonic/server/struct.Grpc.html
- https://docs.rs/tonic/0.6.2/tonic/codec/struct.ProstCodec.html#impl-Codec
- https://github.com/elixir-grpc/grpc/blob/v0.3.1/lib/grpc/stub.ex#L117
- https://docs.rs/tonic/0.6.2/tonic/transport/struct.Server.html
- https://github.com/elixir-grpc/grpc/blob/master/examples/helloworld/priv/client.exs 
- https://github.com/elixir-protobuf/protobuf#usage
- https://github.com/elixir-grpc/grpc/blob/master/examples/helloworld/lib/helloworld.pb.ex

#### Crates
- https://crates.io/crates/prost
- https://crates.io/crates/prost-types
- https://crates.io/crates/tonic

#### Elixir packages
- https://hex.pm/packages/protobuf
- https://github.com/elixir-grpc/grpc
- https://github.com/elixir-grpc/protobuf-elixir
- https://hex.pm/packages/cowlib

#### *Run*
`cargo run`
`protoc --elixir_out=./grpc_stuff/lib -I./proto  helloworld.proto`
`mix deps.get`
`mix run --no-halt`

##### Big thanks to [devsnek](https://github.com/devsnek) for giving me the idea