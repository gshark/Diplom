var n,f,i,a,b,c,d,e:integer;
    s,ar:string;
begin
  ar:='abcdefghijklmnopqrstuvwxyz';
  readln(n);
  b:=((n-1) div 2);
  for f:=1 to n do
  begin
    s:='';
    c:=f-1;
    if c>b then c:=n-f;
    for i:=1 to n do
    begin
      a:=i-1;
      if a>b then a:=n-i;
      d:=abs(a-c)+1;
      if d>26 then d:=d mod 26;
      s:=s+ar[d];
    end;
    writeln(s);
  end;
end.