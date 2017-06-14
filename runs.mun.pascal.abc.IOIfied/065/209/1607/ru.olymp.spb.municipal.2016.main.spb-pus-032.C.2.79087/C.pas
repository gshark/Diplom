PROGRAM problem_C;

VAR n    : integer;
    x, y : integer;
    temp : integer;
    arr  : ARRAY [,] OF integer;
    
BEGIN
// a = 97 + 0
    readln (n);
    arr := NEW integer[n, n];
    n := n - 1;
    FOR x := 0 TO (n DIV 2) DO
    BEGIN
        FOR y := 0 TO (n DIV 2) DO
        BEGIN
            temp := abs (x - y) MOD 26;
            arr[    x,     y] := temp;
            arr[n - x,     y] := temp;
            arr[    x, n - y] := temp;
            arr[n - x, n - y] := temp;
        END;
    END;
    FOR x := 0 TO n DO
    BEGIN
        FOR y := 0 TO n DO
        BEGIN
            write (chr (97 + arr[x, y]));
        END;
        writeln ();
    END;
END.    