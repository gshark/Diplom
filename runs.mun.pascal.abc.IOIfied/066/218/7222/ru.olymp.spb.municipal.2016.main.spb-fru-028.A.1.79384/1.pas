var a,b:longint;
   i,g,c,j:integer;

    d:array[1..10] of integer;
begin
c:=0;    
read(a);
i:=0;
while a>0 do begin
i:=i+1;
d[i]:=a mod 10;
a:=a div 10;
end;
i:=1;
j:=10;
while d[i]=0 do begin
i:=i+1;
end;
g:=i;
while d[j]=0 do begin
j:=j-1;
end;
for i:=g to j do begin
if d[i]=0 then
c:=c+1;
end;
write(c);
end.
