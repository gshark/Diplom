begin
var n,p,q,a,b,f:integer;
var g:real;
var c: array[1..100000] of real;
var d: array[1..100000] of integer;
var e: array[1..100000] of integer;
read(n,p,q);
f:=0;
for a:=p+q to n do
 begin
 for b:=(a div p) to (a div q) do
  begin
  if ((b/a)>(1/p)) and ((b/a)<(1/q)) then
   begin
   f:=f+1; 
   c[f]:=b/a;
   d[f]:=b;
   e[f]:=a;
   end;
  end;
 end;
for b:=1 to f do
 begin
 a:=1;
 g:=1;
 while c[a]>0 do
  begin
  if (c[a]=g) and (c[a]<1) then
  c[a]:=1;
  if c[a]<g then
   begin
   g:=c[a];
   p:=a;
   end; 
  a:=a+1;
  end;
 if p=n then
 break;
 c[p]:=1;
 n:=p;
 writeln(d[p],'/',e[p]);
 end; 
end.