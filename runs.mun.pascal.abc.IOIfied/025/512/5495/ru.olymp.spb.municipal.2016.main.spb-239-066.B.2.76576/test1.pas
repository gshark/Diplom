var
n,p,q,i,j,t,i1,j1,num:integer;
a:array[1..100] of integer;
k:boolean;
begin
read(n);
read(p);
read(q);
num:=1;
for i:=1 to n do begin
  for j:=1 to i-1 do begin
     i1:=i;
     j1:=j;
     for t:=2 to  trunc(sqrt(i)) do begin
         if(i1 mod t=0) and(j1 mod t=0) then begin i1 := i1 div t; j1:=j1 div t; end;
     end;
     if(i1<p*j1)and(i1>q*j1)then begin
        k:=true;
        for t:=1 to num-1 do if(j1*1000+i1=a[t]) then k:=false;
        if(k) then begin a[num]:=j1*1000+i1;  num:=num+1;  end;
     end;
  end;
end;
for i:=1 to n do
for j:=1 to n-1 do begin
if(a[j] div 1000)*(a[j+1] mod 1000)>(a[j+1] div 1000)*(a[j] mod 1000) then begin p:=a[j]; a[j]:=a[j+1]; a[j+1]:=p;end; 
end;
for t:=1 to num-1 do writeln(a[t] div 1000,'/',a[t] mod 1000);
end.