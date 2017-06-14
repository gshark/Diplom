program zadanie_B;
  var p,q: real;i,j,n,k:integer; b:boolean;
    begin
    read(n,p,q);
    for i:=1 to n do
    begin
    for j:=1 to i-1 do
    begin
    b:=true;
    for k:=2 to j do
    if (i mod k=0) and (j mod k=0) then
    b:=false;
    if (j/i>1/p) and (j/i<1/q) and b then
    writeln(j,'/',i);
    end;
    end;
    end.