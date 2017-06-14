program task_d;
var i,j,n,k,resulting:integer;
a:array[1..10] of integer; 
b:array[1..10] of integer;
function countbeauty:integer;
var s,o:integer;
begin
s:=0;
for o:=1 to n-1 do
s:=s+a[o]*a[o+1];
countbeauty:=s;
end;
procedure make(number:integer);
var i,j,p:integer;
ready:boolean;
begin
for i:=1 to n do begin
ready:=true;
for j:=1 to number-1 do
if(b[j]=i) then
ready:=false;
if ready then begin
b[number]:=i;
if(number<n) then
make(number+1)
else begin
for p:=1 to n do 
a[p]:=b[p];

if(countbeauty mod k =0) then
resulting:=resulting+1;
end;
end;

end;
end;

begin
resulting:=0;
readln(n,k);
make(1);
writeln(resulting);
end.