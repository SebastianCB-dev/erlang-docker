-module(hello_world).
-compile(nowarn_export_all).
-compile(export_all).


hello() ->
    io:format("hello world~n").