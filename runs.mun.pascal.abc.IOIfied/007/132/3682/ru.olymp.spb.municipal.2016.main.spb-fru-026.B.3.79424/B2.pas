program a1;
var k,i,j,n,q,p,o,e:Integer;
g,z,x,f,d:Real;
a:array[1..100] of Integer;
b:array[1..100] of Integer; 
begin
read(n,p,q);
k:=0;
For j:=1 to n-2 do
For i:=1 to n-1 do begin
g:=j/i;
z:=1/p;
x:=1/q;
f:=max(g,z);
d:=max(g,x);
If (f=g)and(d=x)and(g<>z)and(g<>x) then begin
k:=k+1;
a[k]:=j;
b[k]:=i;
end;
end;
For j:=1 to k+10 do 
For i:=1 to k-1 do 
If (a[i]/b[i]>a[i+1]/b[i+1])and(a[i+1]<>0) then begin
o:=a[i];
a[i]:=a[i+1];
a[i+1]:=o;
e:=b[i];
b[i]:=b[i+1];
b[i+1]:=e;
end;
For i:=1 to k do 
writeln(a[i],'/',b[i]);
end.