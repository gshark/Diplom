program p1;
var n,k,s,z,b:integer;a:array[1..10] of integer;
begin
read(n,k);
for var i:=1 to n do a[i]:=i;
if n=3 then 
  begin
  for var i3:=1 to n do 
  begin
  for var i:=1 to n-1 do
    begin
    for var i2:=2 to n do
      begin
      b:=b+(a[i2-1]*a[i2]);
      end;
    if b mod k = 0 then begin z:=z+1; end;
    s:=a[i];a[i]:=a[i+1];a[i+1]:=s;
    b:=0;
    end;
  s:=a[i3];a[i3]:=a[i3+1];a[i3+1]:=s;
  end;
  end;
 writeln(z);
end.
