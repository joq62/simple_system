%%%-------------------------------------------------------------------
%% @doc adder_rebar public API
%% @end
%%%-------------------------------------------------------------------

-module(logic_node_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    logic_node_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
