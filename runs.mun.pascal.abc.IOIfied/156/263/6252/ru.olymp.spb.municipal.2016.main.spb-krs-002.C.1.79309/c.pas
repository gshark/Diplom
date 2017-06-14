program n1;
var n,b,j,f,i:longint;
s:char;
a:array [1..100,1..100]of char;
{function f(a,b:integer):char;
var i:integer;
begin
f:='a';
for i:=1 to abs(a-b) do
f:=succ(f);
f:=f;
end;}
begin


read (n);
write (n div 2);
for i:=1 to n do
begin
  for j:=1 to n do
  begin
  if (i+j=n+1) or (i=j) then b:=0 else
    if ((i>(n div 2+1)) and (j<(n div 2+1)))  then

    b:= abs(i-j)-i+(n div 2) else
    if  ((i<(n div 2+1)) and (j>(n div 2+1)))then
    b:=abs(i-j)-(n div 2) else
    b:=abs(i-j);
    write (b);
  
    
    s:='a';
      for f:=1 to b do
      s:=succ(s);
      a[i,j]:=s;
  end;
  
end;  

for i:=1 to n do
begin writeln;
  for j:=1 to n do
  write(a[i,j]);
end;
  end.
 