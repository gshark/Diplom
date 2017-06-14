uses
  crt;
var
  i,j,n,p,q,tmp,a,b,k,l,min1,min2:integer;
  q1,p1,i1,j1,min:real;
  f:array[1..100,1..100] of real;
begin
  Read(n,p,q);
  q1:=1/q;
  p1:=1/p;
  k:=0;
  for j:=1 to 100 do
          for i:=1 to 100 do
           f[j,i]:=1;
  for j:=1 to n-1 do
      for i:=2 to n do begin
          a:=i;
          b:=j;
          if (b>a) then begin
              tmp:=a;
              a:=b;
              b:=tmp;
          end;
          while (b<>0) do begin
          a:=a mod b;
          tmp:= b;
          b:=a;
          a:=tmp;
          end;
          i1:=i;
          j1:=j;
          if ((p1<j1/i1) and (j1/i1<q1 ) and (a=1))
          then begin
          f[j,i]:=j1/i1;
          k:=k+1;
          end;
      end;
  for l:=1 to k do begin
      min:=1;
      for j:=1 to n-1 do
          for i:=2 to n do
             if (f[j,i]<min) then begin
                 min:=f[j,i];
                 min1:=j;
                 min2:=i;
             end;
      Writeln(min1,'/',min2);
      f[min1,min2]:=1;
  end;
end.
