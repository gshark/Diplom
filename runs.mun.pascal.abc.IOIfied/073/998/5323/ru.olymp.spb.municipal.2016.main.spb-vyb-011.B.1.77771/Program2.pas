program p2;
var i,j,n,p,q : integer;
var s : string;
begin
read(n,p,q);
for i := 1 to n-1 do begin

    for j := 1 to n-1 do begin
        if ((j/i > 1/p) and (j/i < 1/q)) then begin
            if (j mod i <> 0) then begin
                writeln(j,'/',i);
            end;
        end;
    end;

end;
end.
