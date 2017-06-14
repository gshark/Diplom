var r,c,j,jm,ix,iy:longint;
    q,i,jj:integer;
    arry:array[1..100]of longint;
begin
read(r,c,q);
for i:=1 to q do read(arry[i]);
{безумные поиски}
for i:=1 to q do begin
{прыжки}
j:=1;jm:=0;jj:=0;
if arry[i]<>j then 
repeat
if((r<c)and(jm<r)and(jj<r))or((r>c)and(jm<c)and(jj<c))then jm:=jm+1;
if((c>r)and(jj>=c))or((c<=r)and(jj>=r))then jm:=jm-1; 
j:=j+jm;
jj:=jj+1;
until j>=arry[i];
if j<>arry[i] then begin j:=j-jm;jj:=jj-1;end;
{конец прыжков, находим координаты ключевой точки}
ix:=1;iy:=1;
if jj<>0 then
repeat
jj:=jj-1;
If ix<c then ix:=ix+1 else iy:=iy+1;
until jj=0;
{конец поисков координат ключевой точки, ищем координаты чиселки}
if arry[i]<>j then
repeat
ix:=ix-1;iy:=iy+1;
j:=j+1;
until j=arry[i];
{мы всё нашли, пишем результат}
writeln(iy,' ',ix);
end;
{конец безумных поисков}
end.    