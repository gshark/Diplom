Program Pr1;
Var a,b,k:integer;
Begin
readln(k);
a:=0;
b:=0;
While k>0 do
begin
b:=b+(k mod 10);
if(b>0)and(k mod 10 = 0) then
a:=a+1;
k:=k div 10;
end;
writeln(a);
End.