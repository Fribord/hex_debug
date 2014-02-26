%%%-------------------------------------------------------------------
%%% @author Tony Rogvall <tony@rogvall.se>
%%% @copyright (C) 2014, Tony Rogvall
%%% @doc
%%%    Hex debug plugin 
%%% @end
%%% Created :  7 Feb 2014 by Tony Rogvall <tony@rogvall.se>
%%%-------------------------------------------------------------------
-module(hex_debug).

-behaviour(hex_plugin).

-export([validate_event/2, 
	 init_event/2,
	 add_event/2, 
	 del_event/1, 
	 output/2]).

%%
%%  add_event(Flags::[{atom(),term()}, Signal::signal()) ->    
%%     {ok, Ref:reference()} | {error, Reason}
%%
add_event(_Flags, _Signal) ->
    {error, no_input}.

%%
%%  del_event(Ref::reference()) ->
%%     ok.
del_event(_Ref) ->
    {error, no_input}.

%%
%% output(Flags::[{atom(),term()}], Env::[{atom(),term()}]) ->
%%    ok.
%%
output(Flags, Env) ->
    io:format("HEX DEBUG: flags=~w, env=~w\n", [Flags, Env]),
    ok.

%%
%% init_event(in | out, Flags::[{atom(),term()}])
%%
init_event(_, _) ->
    ok.

%%
%% validate_event(in | out, Flags::[{atom(),term()}])
%%
validate_event(_Dir, _Flags) ->
    ok.

