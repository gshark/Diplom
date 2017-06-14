var
a:array[1..6] of real;
k,i:integer;
begin
For i:=1 to 6 do
read(a[i]);
For i:=1 to 6 do
If (a[i]=0) and (a[1]<>0) and (a[6]<>0) then k:=k+1;
writeln('k=',k);
end.
