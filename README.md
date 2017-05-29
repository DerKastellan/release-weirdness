# Sample

Simple project for demonstrating an issue I have when doing a release with distillery over a software using the Erlang port API.

I use elixir 1.3.4 on Erlang OTP version 19.

On `mix run` the interaction with the port application works.

If I do `mix release --profile=sample:prod` and then run `_build/dev/rel/sample/bin/sample foreground` or `_build/dev/rel/sample/bin/sample console` the port application prints its first print but then hangs forever - apparently no pipe communication takes place.

