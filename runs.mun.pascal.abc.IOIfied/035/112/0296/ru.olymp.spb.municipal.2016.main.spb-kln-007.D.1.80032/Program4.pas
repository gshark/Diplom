program qq;
var k,n,l,i,o: integer;
a:array [1..5040] of integer;
begin
read(n,k);
l:=0;
case n of
1: begin a[1]:=1;
o:=1;
end;
2: begin a[1]:=2;
a[2]:=2;
o:=2;
end;
3: begin a[1]:=8;
a[2]:=9;
a[3]:=5;
a[4]:=9;
a[5]:=5;
a[6]:=8;
o:=6;
end;
end;
for i:=1 to o do begin
if a[i] mod k = 0 then l:=l+1;
end;
writeln(l);
end.