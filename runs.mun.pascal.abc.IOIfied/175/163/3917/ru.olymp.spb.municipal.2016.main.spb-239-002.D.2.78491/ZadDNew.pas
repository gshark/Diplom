type mas=array [1..10] of integer;
var n,i,j,k,l:integer;
    arr:mas;
    ok:boolean;

function podschet(var arr: mas): integer;
var sum,i: integer;
begin
sum:=0;
for i:=1 to n-1 do begin
    sum:=sum+arr[i]*arr[i+1];
end;
podschet:=sum;
end;

procedure pr(var arr: mas; var ok: boolean);
var i,j:integer;

procedure swap(var a,b: integer);
var c:integer;
begin 
c:=a; a:=b; b:=c; 
end;

begin
i:=n-1;
while (i>0)and(arr[i]>arr[i+1]) do 
      dec(i);
if (i>0) then begin
	   j:=i+1;
	   while (j<n)and(arr[j+1]>arr[i]) do 
	         inc(j);
	   swap(arr[i],arr[j]);
	   for j:=i+1 to (n+i) div 2 do 
	       swap(arr[j],arr[n-j+i+1]);
	   ok:=true;
end
else 
    ok:=false;
end;
begin
l:=0;
read(n,k);
for i:=1 to n do 
    arr[i]:=i;
repeat
    if (podschet(arr) mod k = 0) then 
       l:=l+1;
    pr(arr,ok);
until not ok;
write(l);
end.