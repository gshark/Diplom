var p,pc:array[1..100] of integer;
    pr:array[1..100] of boolean;
    k,b,a,n,c:integer;
procedure act;
var i:integer;
begin
  inc(c);
  for i:=2 to n do begin
  a:=a+p[i-1]*p[i];
  end;
  if (a mod k=0) then
  b:=b+1;
  a:=0;
  
end;
procedure perm;
var i,x,k,d:integer;
begin
  for i:=1 to n do begin p[i]:=i;pc[i]:=1;pr[i]:=true end;
  pc[n]:=0;i:=1;
  act;
  while i < n do begin
    i:=1;x:=0;
    while pc[i]=n-i+1 do begin
      pr[i]:=not pr[i];pc[i]:=1;
      if pr[i] then inc(x);inc(i)
    end;
    if i < n then begin
      if pr[i] then k:=pc[i]+x
      else k:=n-i+1-pc[i]+x;
      d:=p[k];p[k]:=p[k+1];p[k+1]:=d;
      act;
      inc(pc[i])
    end;
  end;
end;
begin
b:=0;
a:=0;

read(n);
read(k);
perm;
write(b);

end.