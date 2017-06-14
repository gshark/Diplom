program a1;
var k, c, e, i, b, f: integer; g: real;
begin
readln(k);
if (k div 1000000000)=0 
 then if (k div 100000000)=0
  then if (k div 10000000)=0
   then if (k div 1000000)=0
    then if (k div 100000)=0
     then if (k div 10000)=0
      then if (k div 1000)=0
       then if (k div 100)=0
        then if (k div 10)=0
        then c:=1
        else c:=2
       else c:=3
      else c:=4
     else c:=5
    else c:=6
   else c:=7
  else c:=8
 else c:=9;
b:=10;
f:=k;
g:=k;
if k<10 then e:=0 else e:=-1;
for i:=1 to c-1 do
b:=b*10;
for i:=1 to c do
begin
if (k div b)=0
then e:=e+1;
k:=k mod b;
b:=b div 10; 
end;
if (f mod 1000000000)=0 then e:=e-8
else if (f mod 100000000)=0 then e:=e-7
else if (f mod 10000000)=0 then e:=e-6
else if (f mod 1000000)=0 then e:=e-5
else if (f mod 100000)=0 then e:=e-4
else if (f mod 10000)=0 then e:=e-3
else if (f mod 1000)=0 then e:=e-2
else if (f mod 100)=0 then e:=e-1;
if (g=1) or (g=1000000000) then e:=0;
write(e);
end.
