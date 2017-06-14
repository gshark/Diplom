program zadD;
type p = array[1..10] of integer;
var n,i,l,k: longint;
    arr: p;
    
function podschet(var arr: p): integer;
var sum,i: integer;
begin
sum:=0;
for i:=1 to n-1 do begin
    sum:=sum+arr[i]*arr[i+1];
end;
podschet:=sum;
end;

procedure perest(var arr: p);
var cur,t : integer;
begin
cur:=0;
while (cur < n-1) do begin
      cur:=cur+1;
      t:=arr[cur];
      arr[cur]:=arr[cur+1];
      arr[cur+1]:=t;
      if (podschet(arr) mod k = 0) then l:=l+1;
end;
end;

begin
l:=0;
read(n);
read(k);
for i:=1 to n do 
    arr[i]:=i;
for i:=1 to n do begin
    perest(arr);
end;
write(l);
end.