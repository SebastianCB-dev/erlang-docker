-module(calculadora).
-compile(nowarn_export_all).
-compile(export_all).

    get_data() ->
        {ok, Term} = io:read("Ingrese el primer numero: "),
        {ok, Term2} = io:read("Ingrese el segundo numero: "),
        io:format("############### CALCULADORA #################~n"),
        io:format("- By: Juan David Mejia Morales & Joan Sebastian Carrillo Baron -~n"),
        io:format("1. Suma~n"),
        io:format("2. Resta~n"),
        io:format("3. Multiplicacion~n"),
        io:format("4. Division~n"),
        {ok, Term3} = io:read("Ingrese la operacion el numero de operacion: "),
        compare(Term,Term2,Term3).


compare(X, Y, Z) ->
    Result = if
        Z == 1 -> X + Y;
        Z == 2 -> X - Y;
        Z == 3 -> X * Y;
        Z == 4 -> X / Y;
        Z >  4  -> 0      
    end,
    io:format("El resultado es: ~p ~n ", [Result]).