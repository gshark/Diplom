Program zero;
var z, i, g: integer;
Begin
g:=0;
Readln(z);
while  (z mod 10) = 0 do
z:= z div 10;
For i:=1 to 100000000 do
begin
if (z mod 10) = 0 then g+=1;
z:= z div 10;
if z=0 then Break;
end;
Writeln(g);
End.