program A;
var k:longint;s:string;i,d:byte;f:boolean;
begin d:=0;f:=false;
readln(k);
s:=inttostr(k);
for i:=length(s) downto 1 do begin
if  not(s[i]='0')
then f:=true;
if (s[i]='0')and(f=true)
then inc(d);end;
writeln(d);end.
