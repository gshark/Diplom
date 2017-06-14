program t;

var n,r,j,l,vvod,gor,vert,u,i,c:integer;
  a:array[1..1000,1..1000] of integer;
v:array[1..100] of integer;
begin
read(r); read(c); readln(n);vvod:=1;gor:=1;vert:=1;
for l:=1 to n do begin
read (v[l]);
for i:=1 to c do begin
 a[gor,vert]:=vvod; vert:=1; gor:=i;  while (gor<>1)or (vert<r) do begin  gor:=gor-1; vert:=vert+1;vvod:=vvod+1; a[gor,vert]:=vvod; end; vvod:=vvod+1;
end;
end;
u:=1;
for i:=1 to c do 
for j:=1 to r do begin
if(v[u]=a[i,j])then begin writeln(i,j); u:=u+1; end;
end;
end.