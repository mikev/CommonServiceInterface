%%%-------------------------------------------------------------------
%%% @author sqor <dev@sqor.com>
%%% @copyright (C) 2015, SQOR, Inc.
%%% @doc
%%% relationship application
%%% @end
%%% Created : 20 Jun 2015 by sqor <dev@sqor.com>
%%%-------------------------------------------------------------------

-module(csi_app).
-behaviour(application).

-include("csi.hrl").

-export([start/2]).
-export([stop/1]).
-export([debug/0]).

debug() ->
    ?LOGMSG(debug,"Application rls started")
.

start(_Type, _Args) ->
	csi_sup:start_link().

stop(_State) ->
	ok.
