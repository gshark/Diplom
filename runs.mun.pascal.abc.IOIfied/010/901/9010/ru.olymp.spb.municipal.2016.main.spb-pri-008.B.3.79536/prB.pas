var 
p,q:real;
b:boolean;
i,j,n,i1,j1,c,maxj,maxi,c1:integer;
jm:array [1..1000000] of integer;
im:array [1..1000000] of integer;
begin
readln (n,p,q);
b:=true;
i:=1;
c:=1;
 for i:=1 to n do
  for j:=1 to n do
   begin
   if (((1/p)<(j/i)) and ((j/i)<(1/q))) then
   begin
   i1:=i;
   j1:=j;
   while (j1<>i1) do
   begin
   if i1>j1 then
   i1:=i1-j1
   else 
   j1:=j1-i1;
   end;
  if j1=1 then
  begin
   jm[c]:=j;
   im[c]:=i;
   c1:=c;
   if c>1 then
   begin
   

 
 repeat 
 if c>1 then
 if ((jm[c-1]/im[c-1])>(jm[c]/im[c])) then
 begin
 maxj:=jm[c-1];
 maxi:=im[c-1];
 jm[c-1]:=jm[c];
 im[c-1]:=im[c];
 jm[c]:=maxj;
 im[c]:=maxi;
 c:=c-1;
 end
 else b:=false
 else b:=false;
 //c:=c-1;
 until b=false;
end;
c:=c1;
c:=c+1;
b:=true;
end;
end;
end;

for i:=1 to c do
if (jm[i]>0) and (im[i]>0) then
writeln (jm[i],'/',im[i]);
end.