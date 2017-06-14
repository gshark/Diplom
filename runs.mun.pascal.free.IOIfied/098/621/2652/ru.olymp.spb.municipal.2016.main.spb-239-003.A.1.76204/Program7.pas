program num1;
var k:longint;
    n,i,kol:integer;
a:array[1..10] of integer;
    flag:boolean;
begin
  read(k);
  n:=0;
  while k>0 do begin
    n:=n+1;
    a[n]:=k mod 10;
    k:=k div 10;
  end;
  kol:=0;
  flag:=false;
  for i:=1 to n do begin
    if flag then begin
      if (a[i]=0) then kol:=kol+1;
    end  
    else begin
      if (a[i]<>0) then flag:=true;
    end;
  end;
  writeln(kol);
end.  