program p2;
var i,j,n,p,q,o,l,temp,temp2 : integer;
var mas : array[0..120,1..2] of integer;
begin
read(n,p,q);
o := 1;
mas[0,1] := 1;
mas[0,2] := 1;
for i := 1 to n-1 do begin

    for j := 1 to n-1 do begin
        if ((j/i > 1/p) and (j/i < 1/q)) then begin
            if (j mod i <> 0) then begin
               l := 1;
               mas[o,l] := j;
               mas[o,l+1] := i;
               inc(o);
            end;
        end;
    end;

end;

for i:= 1 to n do begin
    for j := 1 to n do begin
    if  ((mas[i,2] <> 0) and (mas[j,2] <> 0)) then begin
        if ((mas[i,1] / mas[i,2]) < (mas[j,1] / mas[j,2])) then begin

            temp := mas[i,1];
            temp2 := mas[i,2];
            mas[i,1] := mas[j,1];
            mas[i,2] := mas[j,2];
            mas[j,1] := temp;
            mas[j,2] := temp2;
        end;
    end;
    end;
end;

for i:= 1 to n do begin
if ((mas[i,1] <> 0) and ((mas[i,1] / mas[i,2]) <> (mas[i-1,1] / mas[i-1,2]))) then writeln(mas[i,1],'/',mas[i,2]);
end;

end.
