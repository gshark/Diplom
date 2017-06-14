var mon:Array[1..100,1..100] of Char;
var n:Integer;
var w,m:Integer;
procedure psh(a,b:Integer; c:Char);
var z:Char;
BEGIN
if (a>0) and (a<=n) and (b>0) and (b<=n) then
BEGIN
if c='z' then z:='a' else z:=chr(ord(c)+1);
if mon[a,b]='0' then mon[a,b]:=z;
END;
END;
procedure fil;
var i,j:Integer;
BEGIN

for i:=1 to n do begin while j<n do
BEGIN
j:=j+1;
if mon[i,j]<>'' then begin
psh(i+1,j,mon[i,j]);
psh(i,j+1,mon[i,j]);
psh(i-1,j,mon[i,j]);
psh(i,j-1,mon[i,j]);
end;
END;
j:=0;
end;
END;

BEGIN
readln(n);
 for w:=1 to n do 
 begin
 mon[w,w]:='a';
 mon[w,n-w+1]:='a';
 for m:=1 to n do if mon[w,m]<>'a' then mon[w,m]:='0';
 end;

fil;
for w:=1 to n do begin
for m:=1 to n do write(mon[w,m]);
writeln;
end;
END.







