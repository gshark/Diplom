  const c=100;
  var n,p,q,z,kol,m,v: integer;
  min,max: real;
  a,b: array [1..c] of integer;
  procedure sokr(x,y: integer; var z: integer);
  begin
    for k:integer:=2 to x do
      if (x mod k=0) and (y mod k=0) then
      begin
        z:=1;
        exit;
      end;
      z:=0;
  end;
begin
  read(n,p,q);
  kol:=0;
  min:=1/p;
  max:=1/q;
  for i:integer:=1 to n-1 do
    for j:integer:=i+1 to n do
    begin
      sokr(i,j,z);
      if (z=0) and (i/j>min) and (i/j<max) then 
      begin
        kol:=kol+1;
        a[kol]:=i;
        b[kol]:=j;
      end;
    end;
    
  for i:integer:=1 to 1000 do
    for j:integer:=1 to kol-1 do
     if (a[j]/b[j])>(a[j+1]/b[j+1]) then 
     begin
       m:=a[j];v:=b[j];
       a[j]:=a[j+1];b[j]:=b[j+1];
       a[j+1]:=m;b[j+1]:=v;
     end;
  for i:integer:=1 to kol do writeln(a[i],'/',b[i]);
end.