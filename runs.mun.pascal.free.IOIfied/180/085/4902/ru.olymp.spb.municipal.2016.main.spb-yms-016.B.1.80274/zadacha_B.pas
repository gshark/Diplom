program b;
var n,p,q,i,j,k,c,l,str,stl: longint;
    f: array[1..100,1..100] of real;
    min: real;
begin
  read(n,p,q);
  k:=0;
  for i:=1 to 100 do
    for j:=1 to 100 do
      f[i,j]:=0;
  for i:=1 to n do
    for j:=1 to i do begin
      l:=0;
      if (j/i>1/p) and (j/i<1/q) then begin
        for c:=2 to j do
          if (j mod c = 0) and (i mod c = 0) then l:=1; 
        if l=0 then begin
          f[i,j]:=j/i;
          k:=k+1;
        end;
      end;
    end;
  for i:=1 to k do begin
    min:=1;
    for j:=1 to 100 do
      for c:=1 to 100 do
        if (f[j,c]<min) and (f[j,c]>0) then begin
          min:=f[j,c];
          str:=j;
          stl:=c;
        end;
    writeln(stl,'/',str);
    f[str,stl]:=0;  
  end;
end.
