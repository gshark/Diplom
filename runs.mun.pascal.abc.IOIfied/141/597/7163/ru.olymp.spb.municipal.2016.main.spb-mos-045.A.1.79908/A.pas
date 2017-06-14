Var
x,k:longint;
Begin
readln(x);
while(x mod 10 = 0) do
  x:=x div 10;
while x >0 do begin
  if x mod 10 = 0 then k:=k+1;
  x:=x div 10;
end;
writeln(k);
end.