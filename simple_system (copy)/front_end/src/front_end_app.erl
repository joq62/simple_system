%%%-------------------------------------------------------------------
%% @doc adder_rebar public API
%% @end
%%%-------------------------------------------------------------------

-module(front_end_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    front_end_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
