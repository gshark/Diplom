program colored_diadonals;
var a : array[1..100, 1..100] of char;
var i, j, n, k : longint;
begin
    readln(n);
    for i := 1 to n do
    begin
        for j := 1 to n do
            a[i, j] := 'a'
    end;
    if n mod 2 = 0 then
        k := 0
    else
        k := 1;
    for i := 1 to n do
    begin
        for j := i + 1 to n div 2 + k do
        begin
            a[i, j] := chr(96 + j mod 26);
        end;
    end;
    for i := 1 to 1 do
    begin
        for j := n downto n div 2 + 1 do
        begin
            a[i, j] := a[i, n + 1 - j];
        end;
    end;
    for i := 2 to n do
    begin
         for j := i to n do
         begin
             a[i, j] := a[i - 1, j - 1]
         end;
    end;
    for i := 1 to n do
    begin
        for j := 1 to n do
            a[j, i] := a[i, j]
    end;
    for i := 1 to n do
    begin
         for j := n - i + 1 downto n - i + 1 do
             a[i, j] := 'a';
    end;
    for i := 1 to n do
    begin
        for j := 1 to n do
            write(a[i, j]);
        writeln();
    end;
end.
