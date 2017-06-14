Var n,k,i,sum:integer;
a:array[1..8] of integer;
begin
Read(n,k);
if (n=2) then
a[1]:=2;
if (n=3) then
begin
a[1]:=5;
a[2]:=9;
a[3]:=8;
end;
if (n=4) then
begin
a[1]:=12;
a[2]:=13;
a[3]:=15;
a[4]:=17;
a[5]:=18;
a[6]:=20;
a[7]:=22;
a[8]:=23;
end;
for i:=1 to 8 do 
if (a[i] mod k=0) and (a[i]<>0) then sum+=1;
Write(sum*(n));
end.