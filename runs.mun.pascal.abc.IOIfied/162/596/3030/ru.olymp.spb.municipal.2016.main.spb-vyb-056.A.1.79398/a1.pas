program lol;
uses crt;
var
k,l,m,b:integer;
srt,a:real;
begin
m:=0;
l:=1000000;
writeln('������� �����');
readln(k);
if k<0
then writeln('������� ������������ �����');
if k>l
then writeln('������� ������������ �����') ;
for
srt:=k/2;
writeln(srt);
writeln('��� ����� � ���������� ?');
writeln('���� ��,�� ������� 1');
writeln('���� ���,�� ������� 0');
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
