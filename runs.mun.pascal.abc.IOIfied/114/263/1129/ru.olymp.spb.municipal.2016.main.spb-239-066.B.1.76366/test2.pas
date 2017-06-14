
var
n,p,q,i,j,t,i1,j1,num:integer;
a:array[1..100] of string;
s:string;
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
        s:=j1+'/'+i1;
        k:=true;
        for t:=1 to num-1 do if(s=a[t]) then k:=false;
        if(k) then begin a[num]:=s;  num:=num+1;  end;
     end;
  end;
end;
for t:=1 to num-1 do writeln(a[t]);
end.