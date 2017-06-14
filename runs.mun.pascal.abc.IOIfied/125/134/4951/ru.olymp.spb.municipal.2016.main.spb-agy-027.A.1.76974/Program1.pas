var k,i:integer;
s:string;

begin
readln(k);
i:=1;
while k mod 10 = 0 do begin
i:=i+1;
k:=k div 10;
end;
str(k,s);
i:=0;
while pos('0',s)<>0 do begin
delete(s,pos('0',s),1);
i:=i+1;
end;
write(i);
end.