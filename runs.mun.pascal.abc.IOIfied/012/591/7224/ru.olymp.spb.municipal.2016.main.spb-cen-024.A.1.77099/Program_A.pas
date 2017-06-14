program zero;
var
 k:string;
 i,n,a:integer;
begin
 readln(k);
 a:=length(k);
 repeat
 if k[a]<>'0' then i:=1;
 a:=a-1
 until i=1;
 for i:=a downto 1 do
   if k[i]='0' then n:=n+1;
 writeln(n);
 end.