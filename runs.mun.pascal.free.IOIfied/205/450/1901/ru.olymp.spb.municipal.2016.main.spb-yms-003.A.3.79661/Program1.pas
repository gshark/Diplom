program one;
var a: array[1..100] of longint;
    k,j,i,n:integer;
begin
     read(k);
     i:=0;
     j:=1;
     if (j<= n) then
     begin
     k:=a[1],a[2],a[3],..,a[n];
     if a[j]=0 then
     i:=i+1
           else
     i:=i;
     end;
write(i);
end.
