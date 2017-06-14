program ABC;
Var
k,kras,per,flag:longint;
begin
writeln ('¬ведите число K');
read (k);
kras:=0;
while k>0 do begin
per:=k mod 10;
If per<>0 then flag:=1;
if flag=1 then begin
If per = 0 then
kras:=kras+1;
end;
k:=k div 10;
end;
writeln (kras);
end.