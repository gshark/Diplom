Program first;
var a, b, c, d, k, i: integer;
Begin
readln(a);
k:=0;
for i:=1 to 10 do begin
b:=a mod 10;
a:=a div 10;
If b<>0 then break;
end;
While a>=10 do begin
c:=a mod 10;

If c=0 then k:=k+1;
a:=a div 10
end;
writeln(k);
end.
 