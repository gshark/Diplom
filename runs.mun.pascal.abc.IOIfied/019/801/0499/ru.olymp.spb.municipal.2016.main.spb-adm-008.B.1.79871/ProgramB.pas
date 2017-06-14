program two;
var n,p,q,s: integer;
var numerator, denominator, logic,i,e,y,k,x,j,l,ddd: integer;
var zzz: boolean;
var a,b,c: real;
var m1: array [1..100000] of integer;
var m2: array [1..100000] of integer;
begin
readln(n,p,q);
a:=1/p;
b:=1/q;
s:=0;
e:=0;
for denominator:=1 to n do 
  for numerator:=1 to n do
  begin
   e:=e+1;
   c:=numerator/denominator;
   zzz:=true;
 
  for j:=2 to n do
 if (numerator mod j = 0) and (denominator mod j = 0) then zzz:=false;
 
   if (c>a) and (c<b) and (zzz=true) then
    begin
    s:=s+1;
    m1[s]:=numerator;
    m2[s]:=denominator;
    end;
 end;
       
 for k:=1 to s do
 for l:=1 to s do
 begin
    begin
    if m1[k]/m2[k]>m1[k+1]/m2[k+1] then
       begin
       x:=m1[k];
       m1[k]:=m1[k+1];
       m1[k+1]:=x; 
       x:=m2[k];
       m2[k]:=m2[k+1];
       m2[k+1]:=x; 
       end;
       end;
    end;

if m1[1]/m2[1]>m1[2]/m2[2] then
begin
ddd:=m1[1];
m1[1]:=m1[2];
m1[2]:=ddd;

ddd:=m2[1];
m2[1]:=m2[2];
m2[2]:=ddd;
end;
    
 for y:=1 to s do
      begin
      write(m1[y]);
      write('/');
      writeln(m2[y]);
      end;
end.