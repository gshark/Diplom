program project2;
  var a,b,c: longint;
begin
  readln(a);
   b:=0;
   while a mod 10=0 do
     begin
     if a mod 10=0 then
     a:=a div 10;
     end;
     c:=A;
  while c>0 do
     begin
     if c mod 10=0 then
     begin
     b:=b+1;
     c:=c div 10;
     end;
     if c mod 10<>0 then
     c:=c div 10;
     end;
   write(b);
end.

