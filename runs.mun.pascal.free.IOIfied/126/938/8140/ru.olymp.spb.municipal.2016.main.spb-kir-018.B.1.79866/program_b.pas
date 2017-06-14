program BB;
var a,b:array[1..100]of integer;
c:array[1..10000]of string;
s:string;
a1,a2,a3:real;
n,p,q,i,j,z,x,k,m,l,r,y,yy,t:integer;
begin
    read(n,p,q);
    a1:=1/p;
    a2:=1/q;
    for i:=1 to n do
      for j:=1 to i-1 do begin
       a3:=j/i;
       k:=0;
       l:=0;
       M:=0;
            for z:=2 to j do 
              if j mod z=0 then begin inc(k); a[k]:=z;end;
            for z:=2 to i do
              if i mod z =0 then begin inc(l);b[l]:=z;end;
        for z:=1 to l do
          for x:=1 to k do
            if (a[x]=b[z]) then inc(m);
        if (m=0) and(a3<a2)and(a3>a1)then begin inc(r); str(j/i,c[r]);c[r]:=c[r]+' ';str(j,s);c[r]:=c[r]+s;str(i,s);c[r]:=c[r]+'/'+s;end;
      end;
  for i:=1 to r-1 do 
      for j:=1 to r-i do begin
        if c[j]>c[j+1] then begin
              s:=c[j];
              c[j]:=c[j+1];
              c[j+1]:=s;
        end;      
      end;
  for i:= 1 to r do begin s:=copy(c[i],pos(' ',c[i]),length(c[i])-pos(' ',c[i])+1); writeln(s);end;  
end.