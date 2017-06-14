var
a,b,c,d,e,f,g,h,i,j,k:integer;
writeln:=('введи число больше 1');
read:=(k);
b:=copy(a,1,1);
c:=copy(a,2,1);
d:=copy(a,3,1);
e:=copy(a,4,1);
f:=copy(a,5,1);
g:=copy(a,6,1);
h:=copy(a,7,1);
i:=copy(a,8,1);
j:=copy(a,9,1);
IF (b=0) or (c=0) or (d=0) or (e=0) or (f=0) or (g=0) or (h=0) or (i=0) or (j=0) then
k:=K+1;
if (j=0) then k:=k-1;
if (j=0) and (i=0) ehn k:=k-2;
writerln(k);
end.