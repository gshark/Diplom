Program B;


var a:array [1..200] of string;
d:array[1..200] of real;
p,q:real;
s,i,l,j,n:integer;
a1:string;
t:boolean;
begin
readln(n,p,q);
p:=1/p;
q:=1/q;
s:=0;
for i:=1 to n do 
for l:=1 to n do begin
 if
 (l/i>p) and (l/i<q) then 

     begin
     t:=false;
     for j:=2 to l do
     if (i mod j=0) and (l mod j=0) then t:=true;
     if t=false then 
       begin
       inc(s);
       str(l,a1);
       a[s]:=a1+'/';
       str(i,a1);
       a[s]:=a[s]+a1;
       d[s]:=l/i;
       end;
   end
  
   end;
   
for i:=1 to s-1  do
  for j:=1 to s-i do
 
  if d[j]>d[j+1] then   
     begin
     p:=d[j]; a1:=a[j];
     d[j]:=d[j+1];a[j]:=a[j+1];
     
     d[j+1]:=p;a[j+1]:=a1;
     end;
 
  for i:=1 to s do
  writeln(a[i]);
  end.