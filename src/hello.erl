-module(hello).

-export([start/0, stop/0]).

start() ->
    io:format("Starting hello..."),
    case application:start(hello) of
      ok -> io:format("hello app started");
      _ -> io:format("hello app not started")
    end,
    ok.

stop() -> application:stop(sample), ok.
