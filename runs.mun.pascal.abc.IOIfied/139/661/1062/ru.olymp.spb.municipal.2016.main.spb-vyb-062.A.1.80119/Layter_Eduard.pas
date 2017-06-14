program krasota_chisla;
var x,a,c,d:integer;
begin
write('Ведите одно число: ');
readln(a);
x:=0;
if a mod 10=0 then
 begin
  d:=1;
  while a mod 10 =0  do
   begin
    a:=a div 10;
   end;
  c:=c -(c mod 10);
  while a>9 do
   begin
    a:=(a div 10);
    if a mod 10 = 0 then
    x:=x+1;
   end;
  writeln('Красота этого числа, по-мнению Саши, равна: ',x);
 end;
if (a mod 10 <>0) and (d<>1) then
 begin
  a:=a -(a mod 10);
  while a>9 do
   begin
    a:=(a div 10);
    if a mod 10 = 0 then
    x:=x+1;
   end;
  writeln('Красота этого числа, по-мнению Саши, равна:',x);
 end;
end.
