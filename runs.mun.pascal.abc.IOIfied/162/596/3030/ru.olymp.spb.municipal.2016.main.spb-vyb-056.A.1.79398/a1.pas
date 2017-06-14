program lol;
uses crt;
var
k,l,m,b:integer;
srt,a:real;
begin
m:=0;
l:=1000000;
writeln('Введите число');
readln(k);
if k<0
then writeln('Введено недопустимое число');
if k>l
then writeln('Введено недопустимое число') ;
for
srt:=k/2;
writeln(srt);
writeln('Это число с десятичное ?');
writeln('Если да,то введите 1');
writeln('Если нет,то введите 0');
readln(b);
if b=0
then
a:=srt/2;
writeln(a);
m:=m+1;
if b=1
then
a:=srt/2;
writeln(a);


end.
