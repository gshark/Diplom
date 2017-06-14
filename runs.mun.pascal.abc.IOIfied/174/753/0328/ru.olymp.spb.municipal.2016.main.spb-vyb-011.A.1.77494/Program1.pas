program p1;
var i,j : integer;
var s : string;
begin

readln(s);
for i := length(s) downto 1 do begin
    if (s[i] = '0') then begin
        s[i] := '9';
    end
    else break;
end;
for i := 1 to length(s) do begin
    if (s[i] = '0') then begin
        s[i] := '9';
    end
    else break;
end;
j := 0;
for i := 1 to length(s) do begin
  if (s[i] = '0') then inc(j);
end;
writeln(j);

end.
