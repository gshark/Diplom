program num5;
var i,k,r,c,q,n,kol:int64;
    a:array[1..100] of int64;
begin
  readln(r,c,q);
  kol:=1;
  for i:=1 to q do 
    read(a[i]);
  for k:=1 to (c+r-1) do begin
    if k<r then n:=k;
    if (k>=r) and (k<c+1) then n:=r;
    if (k>=c+1) then n:=(c+r-k);
    for i:=1 to n do begin
      if kol>q then exit;
      kol:=kol+1;
      if k>c then 
        writeln(k-c+i,' ',c-i+1)
      else 
        writeln(i,' ',k-i+1);
    end;
  end;
end.  