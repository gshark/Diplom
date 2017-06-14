var
  t, n, k, i, s, p: longint;
  w:boolean;
  a: array[1..100]of longint;
  v: array[1..100]of boolean;

procedure kr(x, r: longint);
var
  i,j: longint;
begin
  a[r] := x;
  if r = n then begin
   for i := 1 to n  do 
     v[i]:=false;
  w:=true;
    for i := 1 to n - 1 do begin
      {write(a[i], ' ');}
      if v[a[i]]=true then
      w:=false else 
      v[a[i]]:=true;
    end;
    
     {write(a[n], ' ');}
     
    
     
    if w=true then
    for i:=1 to n-1 do
      for j:=i+1 to n do
        s:=s+a[i]*a[j];
 
    {write(s,' ');}
    if (s mod k = 0) and w then begin
      t := t + 1;
      {writeln('YES');}
    end;
    {else writeln('NO');}
    s := 0
  end
  else
    for i := 1 to n do 
      if not v[i] then
        kr(i, r + 1);
end;

begin
  readln(n, k);
for p:=1 to n do
kr(p,1);
  write(t);
end.
