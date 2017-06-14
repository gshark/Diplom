program num2;
type
  arex=record
    it:integer;
    dn:integer;
  end;  
var n,p,q,i,j,k,m:longint;
    d1,d2,d3:real;
    a:array[1..10000] of arex;
    c:arex;
    flag2:boolean;
begin
  read(n,p,q);
  d1:=1/p;
  d2:=1/q;
  k:=0;
  for i:=2 to n do begin
    for j:=1 to i-1 do begin
      flag2:=true;
      d3:=j/i;
      for m:=2 to n do begin
        if(j mod m =0)and(i mod m=0) then
          flag2:=false;
      end;    
      if (d1<d3)and(d3<d2)and(flag2=true) then begin
        k:=k+1;
        a[k].it:=j;
        a[k].dn:=i;  
      end;    
    end;
  end;
    for i:=1 to k do begin
      for j:=1 to k do begin
        if((a[i].it/a[i].dn)>(a[j].it/a[j].dn)) then begin
          c:=a[i];
          a[i]:=a[j];
          a[j]:=c;
        end;  
      end;
    end;
  for i:=k downto 1 do
    writeln(a[i].it,'/',a[i].dn);
end.  
      