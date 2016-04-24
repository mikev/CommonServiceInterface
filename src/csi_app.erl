%%%-------------------------------------------------------------------
%%% @author Zsolt Laky <zsolt.laky@erlang-solutions.com>
%%% @copyright (C) 2016, Erlang Solutions.
%%% @doc
%%% Common Service Interface application
%%% @end
%%% Created : 20 Jun 2015 by Erlang Solutions
%%%-------------------------------------------------------------------

-module(csi_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).
-export([debug/0]).

-include("csi_common.hrl").

debug() ->
    ok = application:start(compiler),
    ok = application:start(syntax_tools),
    ok = application:start(goldrush),
    ok = application:start(lager),
    ok = application:start(csi),
    ?LOGMSG(debug, "Application csi started").

start(_Type, _Args) ->
    csi_sup:start_link().

stop(_State) ->
    ok.
