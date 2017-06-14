type 
mas=array[1..100000] of byte;
mas1=array[1..100000] of real;  
var n,p,q,i,k,r,t:byte;
               t1:real;
      masi,mask:mas;
           masc:mas1;
begin
r:=0;
readln(n,p,q);
for k:=1 to n do begin
  for i:=1 to k do begin
    if (k<i*p) and (i*q<k) then begin
      inc(r);
      masi[r]:=i;
      mask[r]:=k;
      masc[r]:=i/k;
      end;
    end;
  end;
for k:=1 to r do begin
  for i:=1 to r-1 do begin
    if masc[i]>masc[i+1] then begin
      t1:=masc[i+1];
      masc[i+1]:=masc[i];
      masc[i]:=t1;
      t:=masi[i+1];
      masi[i+1]:=masi[i];
      masi[i]:=t;
      t:=mask[i+1];
      mask[i+1]:=mask[i];
      mask[i]:=t;
      end;
    end;
  end;
for i:=1 to r-1 do begin
  for k:=i+1 to r do begin
    if masc[i]=masc[k] then begin
      if masi[i]<masi[k] then masi[k]:=0
      else masi[i]:=0;
      end;
      end;
      end;
for i:=1 to r do begin
  if masi[i]<>0 then 
  writeln(masi[i],'/',mask[i]);
  end;
end.
      
    
    
    

