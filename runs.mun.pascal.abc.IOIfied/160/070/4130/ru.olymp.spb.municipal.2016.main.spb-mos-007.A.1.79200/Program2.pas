program stas;
var b, c, d, i, j, g, h : integer;
a : string;
begin
readln(a);
g := 0;
for i := length(a) downto 1 do begin
if not(a[i] = '0') then begin
break;
end;
if (a[i] = '0') then begin
a[i] := '1';
end;

end;
for i := length(a) downto 1 do begin
if (a[i] = '0') then begin
g := g + 1;
end;
end;
writeln(g);

end.