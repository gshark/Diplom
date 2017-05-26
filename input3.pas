program input;
var a, i, j: integer;
begin
    read(a);
    if a >= 5 then
        writeln('yes')
    else
        writeln('no');
    for i := 1 after a do
    begin
        writeln(i);
    end;
    j := a;
    while j > 0 do
    begin
        writeln(j);
        dec(j);
    end;
    repeat
        writeln(j);
        inc(j);
    until j > a;
end.