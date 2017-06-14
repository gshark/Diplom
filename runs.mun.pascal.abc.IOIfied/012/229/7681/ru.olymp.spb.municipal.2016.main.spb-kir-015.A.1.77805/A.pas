var s:string;
var i,b,n:integer;
begin
b:=0;
readln(s);
n:=length(s);
for i:=1 to n do
if (s[i]='0') then begin
if (s[i-1]='0') and (i=2) then 
b:=b
else if (i<n-1) then
b:=b+1
else 
b:=b
end;
writeln(b);
end.