program zerolover;
var
p,s,t:integer;
l,k:longint;
begin
readln(k);
s:=0;
t:=0;
l:=k;
repeat
if k mod 10 = 0
then
begin
 s:=s+1;
k:=k div 10;
end
else
p:=1;
until p=1;

repeat
if l mod 10 = 0
then begin
t:=t+1;

end;
l:=l div 10;
until l=0;
writeln(t-s);

end.