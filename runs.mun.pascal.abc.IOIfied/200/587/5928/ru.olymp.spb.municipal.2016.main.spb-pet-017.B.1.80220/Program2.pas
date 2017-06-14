var a:array[1..100,1..100] of real;
i,n,b,x:integer;
k,y,q,p,z,h:real;
v:char;
begin
readln(n,q,p);
v:='/';
 a[1,1]:= q;
 a[1,2]:=q*p;
 a[2,1]:=p;
 a[2,2]:=q*p;
 x:=1;
 i:=3;
 y:=a[2,2];
 for b:=x to n do 
 begin
 while y <= n do
 begin
  k:=b*y;
  z:=q*y;
  h:=p*y;
  if (k < z) and (k > h) then
  begin
   a[i,2]:=y;
   a[i,1]:=b;
   i:=i+1;
   end
   else break;
   y:=y+1;
   end;
 end;
 for b:=3 to n do
 writeln(a[b,1],v,a[b,2]);
 end.
