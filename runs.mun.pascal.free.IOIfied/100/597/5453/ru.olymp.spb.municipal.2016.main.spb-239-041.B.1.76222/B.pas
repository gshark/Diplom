program B;
 var
     a,c,m,w:integer;

     n,p,q,num:integer ;

     function kek(var m,w:integer):integer;
       begin
          while (m mod w<>0) and (w mod m<>0) do
begin
  if w>m  then w:=w-m
  else
  m:=m-w;
end;
 if (m=1) or (w=1) then kek:=1
 else kek:=0;

end;
begin
num:=0;
read(n,p,q);
for c:=1 to n do
begin
  for a:=((c+p) div p ) to ((c-q+1) div q)  do
  begin
    m:=a;
    w:=c;
  if kek(m,w)=1 then
 writeln(a,'/',c);

  end;
end;


readln();
readln();


end.

