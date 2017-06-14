var xi,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,x,y,z,XN:real;
begin
readln (XN);
for xi:=1 to XN do
begin
a:=N;
b:=a-1;
c:=b-1;
d:=c-1;
e:=d-1;
f:=e-1;
g:=f-1;
h:=g-1;
i:=h-1;
j:=i-1;
k:=j-1;
l:=k-1;
m:=l-1;
n:=m-1;
o:=n-1;
p:=o-1;
q:=p-1;
r:=q-1;
s:=r-1;
t:=s-1;
u:=t-1;
x:=u-1;
y:=x-1;
z:=y-1;
end;
for i:=1 to XN do
begin
a:=a-b;
b:=b-c;
c:=c-d;
d:=d-e;
e:=e-f;
f:=f-g;
g:=g-h;
h:=h-i;
i:=i-j;
j:=j-k;
k:=k-l;
l:=l-m;
m:=m-n;
n:=n-o;
o:=o-p;
p:=p-q;
q:=q-r;
r:=r-s;
s:=s-t;
t:=t-u;
u:=u-x;
x:=x-y;
y:=y-z;
end;
writeln (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,x,y,z)
end.