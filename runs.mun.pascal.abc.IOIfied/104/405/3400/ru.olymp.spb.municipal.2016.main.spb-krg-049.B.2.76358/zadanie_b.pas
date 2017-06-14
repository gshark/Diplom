program zadanie_B;
  var p,q: real;i,j,n,k,maxi,maxj:integer; c,b:boolean;a:array[1..100,1..100] of real;max:real;
    begin
    c:=true;
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
    a[i][j]:=j/i;
    end;
    end;
    while c do
    begin
    c:=false;
    max:=1;
    maxi:=0;
    maxj:=0;
    for i:= 1 to 100 do
    begin
      for j:=1 to 100 do
      begin
      if (a[i][j]<max) and (a[i][j]<>0) then
      begin
      max:=a[i][j];
      maxi:= i;
      maxj:=j;
      c:=true;
      end;
      end;
    end;
    
        if (c) then 
        begin
        writeln(maxj,'/',maxi);
        a[maxi][maxj]:=0;
        end;
    end;
    end.