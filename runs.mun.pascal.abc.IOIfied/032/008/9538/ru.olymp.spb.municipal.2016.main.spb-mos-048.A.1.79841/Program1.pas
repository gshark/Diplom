var k,r:longint;
i,ans,p:integer;
a:array[1..100] of integer;
begin
readln(k);
ans:=0;
i:=1;
while p=0 do
begin
if k>=10 then p:=k mod 10
 else
  p:=k;
k:=k div 10;
end;
while k<>0 do
 begin
  if k>=10 then a[i]:=k mod 10
   else
    a[i]:=k;
  if a[i]=0 then inc(ans);
 k:=k div 10;
 inc(i);
 end;
 writeln(ans);
 end.