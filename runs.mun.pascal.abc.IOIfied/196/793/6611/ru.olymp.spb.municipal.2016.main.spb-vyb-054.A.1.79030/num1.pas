uses
  crt;
var
  k,n,i,r,d,tmp:integer;
begin
  Readln(k);
  n:=0;
  r:=0;
  tmp:=0;
  while (tmp=0) do
        if ((k mod 10)= 0) then
           k:=k div 10
        else tmp:=1;
  d:=k;
  while(d>0) do begin
    d:=d div 10;
    r:=r+1;
  end;
  for i:=1 to r do begin
      if ((k mod 10)=0) then
         n:=n+1;
      k:=k div 10;
  end;
  Writeln(n);
end.
