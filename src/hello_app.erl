-module(hello_app).

-behaviour(application).

-export([stop/1]).

-export([start/2]).

-include("sample.hrl").

start(_Type, _Args) ->
    io:format("hello application module started~n"),
    {ok, spawn(fun () -> io:format("hello app process started~n") end)}.

stop(_State) -> ok.


