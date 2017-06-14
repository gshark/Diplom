var k:longint;
    c:integer;
begin
    readln(k);
    while k mod 10 = 0 do
        k:=k div 10;
    while k>9 do begin
        if k mod 10 = 0 then
            c:=c+1;
        k:=k div 10;
    end;
    writeln(c);
end.