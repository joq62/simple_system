%%%-------------------------------------------------------------------
%% @doc adder_rebar top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(mysys).

-behaviour(application).
-behaviour(supervisor).

-export([start/2, stop/1]).
-export([init/1]).
%% -behaviour(application).

start(_StartType, _StartArgs) ->
    {ok,_Pid}=supervisor:start_link({local, ?MODULE}, ?MODULE, []).

stop(_State) ->
    ok.

%% -behaviour(supervisor). 


%% --------------------------------------------------------------------
%% Macros
%% --------------------------------------------------------------------
%% Helper macro for declaring children of supervisor
-define(CHILD(M, Type), {M, {M, start, []}, permanent, 5000, Type, [M]}).
%% --------------------------------------------------------------------



%% sup_flags() = #{strategy => strategy(),         % optional
%%                 intensity => non_neg_integer(), % optional
%%                 period => pos_integer()}        % optional
%% child_spec() = #{id => child_id(),       % mandatory
%%                  start => mfargs(),      % mandatory
%%                  restart => restart(),   % optional
%%                  shutdown => shutdown(), % optional
%%                  type => worker(),       % optional
%%                  modules => modules()}   % optional
init([]) ->
    SupFlags = #{strategy => one_for_all,
                 intensity => 0,
                 period => 1},
    ChildSpecs = [#{id => front_end,
		    start=>{front_end,start,[]}
		   },
		  #{id => logic_node,
		    start=>{logic_node,start,[]}
		   },
		  #{id => service_node,
		    start=>{service_node,start,[]}
		   }
		 ],
    {ok, {SupFlags, ChildSpecs}}.

%% internal functions
