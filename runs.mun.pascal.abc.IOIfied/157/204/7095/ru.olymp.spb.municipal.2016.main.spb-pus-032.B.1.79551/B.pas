PROGRAM problem_B;

VAR n     : integer;
    p, q  : integer;
    denom : int64;
    temp  : int64;
    i     : int64;
    a, b  : int64;
    nn    : int64;
    dn    : int64;
    
FUNCTION GCD (a, b : uint64) : int64;
VAR r : uint64;
BEGIN
    IF (b > a)
    THEN
    BEGIN
        r := b;
        b := a;
        a := r;
    END;
    REPEAT
        r := a MOD b;
        a := b;
        b := r;
    UNTIL r = 0;
    GCD := a;
END;

FUNCTION LCM (a, b : int64) : int64;
BEGIN
    LCM := a * (b DIV GCD (a, b));
END;

BEGIN
    readln (n, p, q);
    denom := 1;
    FOR i := 2 TO n DO denom := LCM (denom, i);
    a := denom DIV p;
    b := denom DIV q;
    FOR i := a + 1 TO b - 1 DO
    BEGIN
        temp := GCD (denom, i);
        dn := denom DIV temp;
        IF (dn <= n)
        THEN
        BEGIN
            nn := i DIV temp;
            writeln (nn, '/', dn);
        END;
    END;
END.