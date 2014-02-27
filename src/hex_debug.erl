%%%---- BEGIN COPYRIGHT -------------------------------------------------------
%%%
%%% Copyright (C) 2007 - 2014, Rogvall Invest AB, <tony@rogvall.se>
%%%
%%% This software is licensed as described in the file COPYRIGHT, which
%%% you should have received as part of this distribution. The terms
%%% are also available at http://www.rogvall.se/docs/copyright.txt.
%%%
%%% You may opt to use, copy, modify, merge, publish, distribute and/or sell
%%% copies of the Software, and permit persons to whom the Software is
%%% furnished to do so, under the terms of the COPYRIGHT file.
%%%
%%% This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
%%% KIND, either express or implied.
%%%
%%%---- END COPYRIGHT ---------------------------------------------------------
%%%-------------------------------------------------------------------
%%% @author Tony Rogvall <tony@rogvall.se>
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

