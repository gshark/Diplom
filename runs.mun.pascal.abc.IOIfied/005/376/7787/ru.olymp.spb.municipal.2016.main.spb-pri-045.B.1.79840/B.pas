var a:array [1..100] of integer;
    i,n,p,q,f,u,z:integer;
begin
u:=1;
f:=1;
i:=1;
readln(n,p,q);
while (i<n) do
begin
z:=i;
if ((f/i)>(1/p)) and ((f/i)<(1/q)) then a[u]:=10*f+i;
if ((f/i)>(1/q)) then i:=i+1;
if ((f/z)>(1/q)) then f:=0;
f:=f+1;
u:=u+1;
end;
for q:=1 to u do
begin
z:=q;
for i:=1 to u do
       begin
       if (a[i]<>0) and (a[z]<>0) and (i>z) then if (((a[z] div 10)/(a[z] mod 10))>((a[i] div 10)/(a[i] mod 10))) then
          begin
          f:=a[i];
          a[i]:=a[z];
          a[z]:=f;
       end;
       end;
end;
for i:=1 to u do
    begin
    if (a[i]<>0) then writeln(a[i] div 10,'/',a[i] mod 10);
    end;
end.
