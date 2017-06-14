program zadachaC;
var mas:array [1..100,1..100] of char;
 i,j,n:integer;
 begin
 writeln('¬ведите число n');
 readln(n);
 for i:=1 to n do
  for j:=1 to n do
  begin
  if (i=j)or (i=n+1-j) then mas[i,j]:='a'
  else
   if (i=j+1)or (i=n+2-j) or (i=j-1)or (i=n-j)then mas[i,j]:='b'
   else
    if (i=j+2)or (i=n+3-j) or (i=j-2)or (i=n-1-j)then mas[i,j]:='c'
     else
    if (i=j+3)or (i=n+4-j) or (i=j-3)or (i=n-2-j)then mas[i,j]:='d'
     else
    if (i=j+4)or (i=n+5-j) or (i=j-4)or (i=n-3-j)then mas[i,j]:='e'
     else
    if (i=j+5)or (i=n+6-j) or (i=j-5)or (i=n-4-j)then mas[i,j]:='f'
     else
    if (i=j+6)or (i=n+7-j) or (i=j-6)or (i=n-5-j)then mas[i,j]:='g'
     else
    if (i=j+7)or (i=n+8-j) or (i=j-7)or (i=n-6-j)then mas[i,j]:='i'
     else
    if (i=j+8)or (i=n+9-j) or (i=j-8)or (i=n-7-j)then mas[i,j]:='h'
     else
    if (i=j+9)or (i=n+10-j) or (i=j-9)or (i=n-8-j)then mas[i,j]:='k'
     else
    if (i=j+10)or (i=n+11-j) or (i=j-10)or (i=n-9-j)then mas[i,j]:='j'
     else
    if (i=j+11)or (i=n+12-j) or (i=j-11)or (i=n-10-j)then mas[i,j]:='l'
     else
    if (i=j+12)or (i=n+13-j) or (i=j-12)or (i=n-11-j)then mas[i,j]:='m'
     else
    if (i=j+13)or (i=n+14-j) or (i=j-13)or (i=n-12-j)then mas[i,j]:='n'
     else
    if (i=j+14)or (i=n+15-j) or (i=j-14)or (i=n-13-j)then mas[i,j]:='o'
     else
    if (i=j+15)or (i=n+16-j) or (i=j-15)or (i=n-14-j)then mas[i,j]:='p'
     else
    if (i=j+16)or (i=n+17-j) or (i=j-16)or (i=n-15-j)then mas[i,j]:='r'
     else
    if (i=j+17)or (i=n+18-j) or (i=j-17)or (i=n-16-j)then mas[i,j]:='s'
     else
    if (i=j+18)or (i=n+19-j) or (i=j-18)or (i=n-17-j)then mas[i,j]:='t'
     else
    if (i=j+19)or (i=n+20-j) or (i=j-19)or (i=n-18-j)then mas[i,j]:='q'
     else
    if (i=j+20)or (i=n+21-j) or (i=j-20)or (i=n-19-j)then mas[i,j]:='v'
     else
    if (i=j+21)or (i=n+22-j) or (i=j-21)or (i=n-20-j)then mas[i,j]:='w'
     else
    if (i=j+22)or (i=n+23-j) or (i=j-22)or (i=n-21-j)then mas[i,j]:='u'
     else
    if (i=j+23)or (i=n+24-j) or (i=j-23)or (i=n-22-j)then mas[i,j]:='x'
     else
    if (i=j+24)or (i=n+25-j) or (i=j-24)or (i=n-23-j)then mas[i,j]:='y'
     else
    if (i=j+25)or (i=n+26-j) or (i=j-25)or (i=n-24-j)then mas[i,j]:='z'
    end;
 for i:=1 to n do
 begin
  writeln( );
  for j:=1 to n do
  write(mas[i,j]);
  end;
  end.