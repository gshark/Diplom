var a,c:string;
var d:integer;
begin
readln(a);
for var n:= 1 to a.Length do
    begin;
    if a.EndsWith('0')then
  a := a.Remove(a.LastIndexOf('0'));
    end;
for var i:= 1 to a.Length do  
    begin
    c:=a[i];
    if c='0'
      then
      d:=d+1;
    end;
writeln(d);
end.


