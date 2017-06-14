var k,i,Y,X,Z:integer;
 begin
 read(k); X:=1;
 if (k mod 10=0) then begin
 for i:=1 to k do begin k:=k div 10;
 if (k mod 10<>0) then break;
 end;
end;
Y:=k;
for i:=1 to Y do begin
if (Y div 10<>0) then X:=X+1;
Y:=Y div 10;
if (Y div 10=0) then break;
end;
 if (k mod 10<>0) then begin
 for i:=1 to X do begin k:=k div 10;
 if (k mod 10=0) then Z:=Z+1;
 end;
 end;
writeln(Z-1);
if k=0 then Z:=0
end.