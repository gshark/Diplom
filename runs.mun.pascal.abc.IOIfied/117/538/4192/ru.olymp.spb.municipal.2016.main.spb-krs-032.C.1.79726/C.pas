program C;
var n,i,u,x,y:integer;
m:array[1..100,1..100] of string[1];
begin
readln(n);
for i := 1 to n do
    m[i][i] := 'a';
for i := n downto 1 do
    m[i][n-i+1] := 'a';
for i := 1 to n do
    for u := 1 to n do
        if m[i][u] <> 'a' then begin
            x := 0;
            y := 0;
            while (1 <= (i-x)) and ((i-x) <= n) do
                if m[i-x][u] = 'a' then begin
                    break;
                end
                else
                    inc(x);
            while (1 <= (i+y)) and ((i+y) <= n) do
                if m[i+y][u] = 'a' then
                    break
                else
                    inc(y);
            if x < y then
                m[i][u] := chr(ord('a')+(x mod 26))
            else
                m[i][u] := chr(ord('a')+(y mod 26))             
        end;
for u := 1 to n do begin
    x := 0;
    y := 0;
    while (1 <= (u-x)) and ((u-x) <= n) do
        if m[1][u-x] = 'a' then begin
            break;
        end
        else
            inc(x);
    while (1 <= (u+y)) and ((u+y) <= n) do
        if m[1][u+y] = 'a' then
            break
    else
        inc(y);
    if x < y then
        m[1][u] := chr(ord('a')+(x mod 26))
    else
        m[1][u] := chr(ord('a')+(y mod 26));
    if x < y then
        m[n][u] := chr(ord('a')+(x mod 26))
    else
        m[n][u] := chr(ord('a')+(y mod 26));
end;
for i := 1 to n do begin
    for u := 1 to n do
        if ord(m[i][u][1]) > 48 then
            write(m[i][u][1])
        else
            write(0);
    writeln();
end;
end.