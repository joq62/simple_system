%%% -------------------------------------------------------------------
%%% Author  : uabjle
%%% Description : dbase using dets 
%%% 
%%% Created : 10 dec 2012
%%% -------------------------------------------------------------------
-module(mysys_eunit).    
   
%% --------------------------------------------------------------------
%% Include files
%% --------------------------------------------------------------------
-include_lib("eunit/include/eunit.hrl").
%% --------------------------------------------------------------------
-define(OK_MSG,"OK -> "++atom_to_list(?MODULE)++" : "++atom_to_list(?FUNCTION_NAME)).
%% External exports
-export([start/0]).



%% ====================================================================
%% External functions
%% ====================================================================

%% --------------------------------------------------------------------
%% Function:tes cases
%% Description: List of test cases 
%% Returns: non
%% --------------------------------------------------------------------
start()->
    ?debugMsg("Start test -> "++atom_to_list(?MODULE)),
    ?assertEqual(ok,setup()),
   
    %% Start  application tests
    ?assertEqual(ok,ping()),
    ?assertEqual(ok,normal_case_1()),
    %% End application tests
 
    ?assertEqual(ok,cleanup()),
    ?debugMsg(atom_to_list(?MODULE)++" : ENDED SUCCESSFUL ---------"),
    ok.




%% --------------------------------------------------------------------
%% Function:start/0 
%% Description: Initiate the eunit tests, set upp needed processes etc
%% Returns: non
%% --------------------------------------------------------------------
ping()->
    Node=node(),
    ?assertMatch({pong,Node,front_end},front_end:ping()),
    ?assertMatch({pong,Node,logic_node},logic_node:ping()),
    ?assertMatch({pong,Node,service_node},service_node:ping()),
    ?debugMsg(?OK_MSG),
    ok.

%% --------------------------------------------------------------------
%% Function:start/0 
%% Description: Initiate the eunit tests, set upp needed processes etc
%% Returns: non
%% --------------------------------------------------------------------
normal_case_1()->
    ?assertMatch(42,front_end:add(20,22)),
    ?assertMatch(42,logic_node:add(20,22)),
    ?assertMatch(42,service_node:add(20,22)),
    ?debugMsg(?OK_MSG),
    ok.


%% --------------------------------------------------------------------
%% Function:start/0 
%% Description: Initiate the eunit tests, set upp needed processes etc
%% Returns: non
%% --------------------------------------------------------------------
setup()->
  %  ?assertMatch({ok,_},adder:start()),
    ?assertMatch(ok,application:start(sasl)),
    ?assertMatch(ok,application:start(mysys)),
  %  ?assertMatch({ok,_},mysys_sup:start_link()),
    ?debugMsg(?OK_MSG),
    ok.

%% --------------------------------------------------------------------
%% Function:start/0 
%% Description: Initiate the eunit tests, set upp needed processes etc
%% Returns: non
%% -------------------------------------------------------------------    

cleanup()->
    ?assertMatch(ok,application:stop(mysys)),
    init:stop(),
    ?debugMsg(?OK_MSG),
    ok.
%% --------------------------------------------------------------------
%% Function:start/0 
%% Description: Initiate the eunit tests, set upp needed processes etc
%% Returns: non
%% --------------------------------------------------------------------
