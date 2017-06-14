Var
k,cr:Integer;
Begin
cr:=0;
Readln(k);
repeat
If k mod 10 = 0 then
k:=k div 10;
Until k mod 10 <> 0;
repeat
If k mod 10 = 0 then
cr:=cr+1;
k:=k div 10;
until k<10;
Writeln(cr);
end.



