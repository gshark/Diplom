program a1;
Label 1;
var j,k,i,z,x,h:Integer;
s1,n:String; 
begin
read(n);
k:=length(n);
h:=0;
z:=0;
j:=0;
x:=0;
For i:=k downto 1 do begin
S1:=copy(n,i,1);
If s1<>'0' then begin
j:=j+1;
goto 1;
end;
If (j=0)and(s1='0') then begin
h:=h+1;
end;
end;
1: For i:= 1 to k do begin
S1:=copy(n,i,1);
If s1<>'0' then
z:=z+1;
If (z<>0)and(s1='0') then
x:=x+1;
end;
writeln(x-h);
end.