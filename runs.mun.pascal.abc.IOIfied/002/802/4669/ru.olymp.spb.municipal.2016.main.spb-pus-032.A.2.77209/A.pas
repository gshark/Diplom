PROGRAM problem_A;

VAR k : integer;
    s : string;
    flag : boolean;
    beauty : integer;

FUNCTION tostr (n : integer) : string;
VAR s : string[1];
BEGIN
    s := '0';
    result := '';
    REPEAT
        s[1] := chr((n MOD 10) + 48);
        n := n DIV 10;
        result += s;
    UNTIL n = 0;
END;

BEGIN
    readln(k);
    s := tostr(k);
    flag := FALSE;
    beauty := 0;
    k := 0;
    REPEAT
        inc(k);
        IF (k > s.Length) THEN BREAK;
        IF (s[k] <> '0') THEN flag := TRUE;
        IF ((s[k] = '0') AND flag)
        THEN
        BEGIN
            inc(beauty);
        END;
    UNTIL FALSE;
    writeln(beauty);
END.