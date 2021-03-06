-module(procesos).
-compile(nowarn_export_all).
-compile([export_all]).

proc() ->
    io:format("I'm a process with id ~p~n", [self()]).


loop() -> loop().

run() ->
    spawn(fun() -> proc() end),
    spawn(procesos, proc, []),
    spawn(?MODULE, proc, []),
    ok.