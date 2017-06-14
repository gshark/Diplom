program numberA;

var
  a: integer;
  i: integer;
  b:real;
begin
readln(a);
b:=a;
i:=0;
if (a/10 = b/10)
  then
    begin
    inc(i);
    b:=a/10;
    a:=a;
     end;
if (a/10 <> b/10) then
    begin
    i:=i;
    b:=a/10;
    end;
write (i+1);
end.



  