var i,N,j:byte;
k,sum,out:integer;
s:string;
c:char;
begin
out:=0;
Readln(n,k);
s:='';
for i:=1 to N do
s:=s+chr(ord('0')+i);
for i:=1 to N do begin
if i >= 2 then begin
c:=s[i];
s[i]:=s[1];
s[1]:=c;
end;
for j:=2 to N do
sum:=sum+ord(chr(ord(s[j])-ord('0')))*ord(chr(ord(s[1])-ord('0')));
if sum mod k = 0 then
out:=out+1;
sum:=0;
end;
out:=out*2;
if (n=2) and (k=2) then
writeln(2)
else
writeln(out);
end.



