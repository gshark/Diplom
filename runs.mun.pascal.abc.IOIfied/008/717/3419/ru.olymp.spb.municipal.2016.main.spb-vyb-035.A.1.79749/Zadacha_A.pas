var i,k:integer;
begin
readln(k);
repeat if (k mod 10=0) then k:=k div 10;
until k mod 10>0;
repeat if (k mod 10=0) then begin i:=i+1; k:=k div 10; end
                       else k:=k div 10;
until k div 10=0;
writeln(i);
end.
