program abdf;

var
n,p,q,i,b,a,m:integer;
flag:boolean;
begin
 read(n,p,q);
 for i:=1 to n-1 do
  for m:=1 to n-1 do
   begin
    a:=m;
    b:=i;
    while (a<>0) and(b<>0) do
     begin
      if (a>b) then
       a:=a mod b
       else 
       b:=b mod a;
     end;
     if (m*q<i) and (m*p>i) then
      flag:=true;
   if (a+b=1) and(flag=true)and (m<i) then
     writeln(m,'/',i);
   end;
end.