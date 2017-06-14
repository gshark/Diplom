program one;
var a,b: string;
 i,d,p,o,k: integer; 
begin 
k:=0;
readln(a);
 b:=''; 
 d:=1;
 while a[d] = '0' do  begin
 a[d]:='5';
 d:=d+1;
end;
for i:=1 to length(a) do begin 
b:=a[i]+b;end;
readln;
p:=1;
 while b[p] = '0' do  begin
 b[p]:='5';
 p:=p+1;
 end;
 for o:=1 to length(b) do begin
 if b[o]='0' then k:=k+1;
 end;
 writeln(k);
 end.