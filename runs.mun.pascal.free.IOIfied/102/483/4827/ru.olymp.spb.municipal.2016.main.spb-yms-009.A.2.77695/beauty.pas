program beauty;
var n, i, s : longint;
begin
    readln(n);
    s := 0;
    while n mod 10 = 0 do
    begin
        n := n div 10;
    end;
    while n > 0 do
    begin
        if n mod 10 = 0 then
        begin
            s := s + 1;
        end;
        n := n div 10;
    end;
    writeln(s);
end.
