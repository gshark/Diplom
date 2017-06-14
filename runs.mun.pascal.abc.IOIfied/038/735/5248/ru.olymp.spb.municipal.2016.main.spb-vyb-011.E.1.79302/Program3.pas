program p2;
var i,j,n,p,q,s,t,sdv,r,c,z,zz : integer;
var mas : array[1..1000,1..1000] of integer;
var mas2 : array[1..100] of integer;
begin
read(r,c,q);
for i := 1 to q do begin
    read(mas2[q]);
end;


t := c + r - 1;
s := 1;
for i := 1 to t do begin
sdv := 0;
    for j := 1 to r do begin


        if (i - sdv) > 0 then begin
        if (i-sdv <= c) then begin
        mas[i-sdv,j] := s;

        inc(s);
        end;
        inc(sdv);

        end;
        
    end;
end;
zz := 1;
for zz := 1 to q do begin
for i := 1 to c do begin

for j := 1 to r do begin

    if (mas[j,i] = zz) then writeln(i,' ',j)


end;

end;

end;
end.
