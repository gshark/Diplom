Program Probl1;
var a,k : integer;
begin
 write('¬ведите a ');
 readln(a);
 k:=0;
 while (a mod 10 = 0) do
 begin
  a:=a div 10;
 end;
 while (a>9) do
 begin
 if (a mod 10 = 0) then
 begin
  k:=k+1;
 end;
 a:=a div 10;
 end;
 writeln(k);
end.