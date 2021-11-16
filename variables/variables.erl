-module(variables).
-compile(nowarn_export_all).
-compile(export_all).

% Constantes
-define(N, 123).
-define(M, "what").
-define(SQUARED (X), X*X).

showVariables() ->

    Name = "Sebastian Carrillo & Juan David Mejia",
    io:format("Name: ~p ~n", [Name]),

    Age = 20,
    io:format("Age: ~p ~n", [Age]),

    IsMale = fun() -> false end,
    io:format("Male: ~p ~n", [IsMale()]),

    {A, [Head,Second|Rest]} = {1, [10,20,30,40]},
    io:format("A = ~p ~n", [A]),
    io:format("Head = ~p ~n", [Head]),
    io:format("Second = ~p ~n", [Second]),
    io:format("Rest = ~p ~n", [Rest]),

    io:format("N = ~p ~n", [?N]),
    io:format("M = ~p ~n", [?M]),
    io:format("~p ~n", [?SQUARED(5)]),

    % Variables anonimas
    _ = 1,
    _ = 2.
