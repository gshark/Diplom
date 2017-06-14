program csd;
var
a,n,i,k,j1,j2:integer;
s:array[1..100] of integer;
begin

read(n);
k:=1;
if n mod 2=0 
 then begin
for i:=0 to (n div 2)-1 do begin
s[k]:=i;
k:=k+1 end;
for i:=(n div 2)-1 downto 0 do begin
s[k]:=i;
k:=k+1 end; end
 else begin
for i:=0 to (n div 2) do begin
s[k]:=i;
k:=k+1 end;
for i:=(n div 2)-1 downto 0 do begin
s[k]:=i;
k:=k+1 end; end;

for j1:=1 to n do begin
 for J2:=1 to n do begin
 a:=abs(s[j1]-s[j2]);
 while a>=26 do
 a:=a-26;
 write(char(word('a')+a));end;
 writeln;
 end;

 end.
 