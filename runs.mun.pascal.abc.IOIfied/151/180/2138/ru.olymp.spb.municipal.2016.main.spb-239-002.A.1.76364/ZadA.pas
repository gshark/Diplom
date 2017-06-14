program zadA;
var n,k: longint;
    b : boolean;
begin
n:=0;
k:=0;
b:=false;
read(n);
while (n div 10<>0) do begin
     if (n mod 10 = 0) then k:=k+1
     else b := true;
     if (n mod 10 = 0) and (b = false) then
        k:=k-1;
     n:=n div 10;
end;
write(k);
end.