var n,k,i,ans:int64;
a:array of int64;

procedure ye(a:array of int64; t,r:int64);
var j,p:int64;
f:boolean;

begin
if t=n then 
begin
if r mod k = 0 then ans+=1;
exit;
end;

for j:=1 to n do
begin
f:=true;
for p:=0 to t-1 do
if j=a[p] then begin f:=false; break; end;

if f=true then
begin
 r += a[t-1]*j;
 t +=1;
 setlength(a,t);
 a[t-1]:=j;
 ye(a,t,r);
end;
end;

end;

begin

readln(n,k);
ans:=0;
for i:=1 to n do
begin
  setlength(a,1);
  a[0] := i;
  ye(a,1,0);
end; 

writeln(ans);
end.