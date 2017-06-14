program noughts;
var 

k:string;
i,l,sum,cont:integer;
a:array [1..100] of char;
begin
readln(k);
l:=k.Length;
sum:=0;
cont:=0;

for i:=0 to 2 do begin
repeat Delete(k,1,1);cont:=cont+1;
until a[1]<>'0';

end;
for i:=1 to l-cont-1 do begin
a[i]:=Char(k[i]);
If a[i]='0' then sum:=sum+1; 
end;



writeln(sum);
end.
