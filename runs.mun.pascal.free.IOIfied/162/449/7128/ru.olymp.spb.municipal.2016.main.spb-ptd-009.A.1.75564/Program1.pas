program an;
var
i,j,k,vvod,kras,schet,dat,max:integer;
a:array[1..6] of integer;
b:array[1..6]of integer;
begin
schet:=0;
for i:=1 to 6 do begin
 schet:=schet+1;
 read(a[i]);
 end;
kras:=0; dat:=0;
for i:=1 to schet do begin
if (a[i]=0) and (dat=1) then kras:=kras+1;
if (a[i]<>0) and (kras<>0) then begin b[i]:=kras; kras:=0; dat:=0; end;
if (i=schet)and (a[i]=0) then kras:=0;
if a[i]<>0 then dat:=1;

end;
max:=0;
for i:=1 to 6 do 
 if b[i]>max then max:=b[i];
writeln(max);
end.