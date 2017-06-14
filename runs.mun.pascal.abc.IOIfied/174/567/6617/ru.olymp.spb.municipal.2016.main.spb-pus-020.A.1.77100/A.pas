program DezOniSar;
        var a,k:real;
            c,b:integer;
begin
readln(b);
c:=0;
while b<>0 do
  begin
  if b mod 10 = 0 then 
    begin
    if c=1 then a:=a+1
    end  else c:=1;
  b:=b div 10;
  if b=0 then b:=0;
  end;
writeln(a);
end.