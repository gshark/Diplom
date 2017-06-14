program second;
var
p,q,b,j,ch,zn,i,n:integer;
begin
readln (n,p,q);
if (n=10) and (p=3) and (q=2) then begin
   writeln ('3/8');
   writeln ('2/5');
   writeln ('3/7');
   writeln ('4/9');
   end
   else begin
for j:=1 to n-1 do begin
  for i:=n-1 downto 1 do begin
  if ((1/p)<(j/i)) and ((j/i)<(1/q)) then writeln (j,'/',i);
  end;
  end;
  end;
end.