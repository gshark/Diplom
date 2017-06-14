Program zero;
var z, i, g: integer;
mas: array [1..100000000] of integer;
Begin
g:=0;
Readln(z);
while  (z mod 2) = 0 do
z:= z div 2;
For i:=1 to 100000000 do
begin
if (z mod 2) = 0 then g+=1;
z:= z div 2;
if z=0 then Break;
end;
Writeln(g);
End.