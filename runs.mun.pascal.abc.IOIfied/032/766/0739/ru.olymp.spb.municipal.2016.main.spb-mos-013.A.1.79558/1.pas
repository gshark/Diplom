program pr_1;
var
k, c:integer;
begin
writeln('Введите число');
readln(k);
if ((k mod 10) <> 0)
then
begin
if (((k mod 100)div 10) = 0)
then c:= c + 1;
if (((k mod 1000) div 100) = 0)
then c:=c + 1;
if (((k mod 10000) div 1000) = 0)
then c:= c + 1;
if (((k mod 100000) div 10000) = 0)
then c:= c + 1;
if (((k mod 1000000) div 100000) = 0)
then c:= c + 1;
if (((k mod 10000000) div 1000000) = 0)
then c:= c + 1;
writeln('Красота числа: ',c);
end
else writeln('Число не красивое');
end.