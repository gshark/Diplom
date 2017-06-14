program task_A;
var i,s:integer;
var n:String;
a:array[1..1000]of String;
begin
s:=0;
readln(n);
for i:=1 to length(n) do
a[i]:=copy(n,i,1);
for i:=1 to length(n) do
if(a[i]='0') then
s:=s+1;
i:=1;
while(a[i]='0') do begin
s:=s-1;
i:=i+1;
end;
i:=length(n);
while(a[i]='0') do begin
s:=s-1;
i:=i-1;
end;
writeln(s);
end.