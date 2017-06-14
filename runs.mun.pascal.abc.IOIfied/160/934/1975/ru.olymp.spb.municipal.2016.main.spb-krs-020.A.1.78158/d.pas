program D;
var n,k,rev,i:integer;
    mas:array[1..10]of integer;
begin
For i:=1 to 10 do
 mas[i]:=i;
readln(n,k);
rev:=1;
For i:= 1 to (n-1) do
 begin
  rev:=rev*i;
  k:=k+(mas[i]*mas[i+1]);
 end;
rev:=rev*n; 

  

end.
 