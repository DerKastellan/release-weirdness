defmodule Sample do
  use Application

  def start(_type, _args) do
    IO.puts "#{inspect File.cwd}"
    port = Port.open({:spawn, "/var/fpwork/demsuw61/sample/test.esh"}, [:use_stdio, :binary, packet: 2])

    command = {:hello, :world} |> :erlang.term_to_binary

    Port.command(port, command)

    Port.close(port)

    {:ok, self()}
  end
end
