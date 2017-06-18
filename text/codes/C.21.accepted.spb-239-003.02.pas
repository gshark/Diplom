program num3;
var i,j,k,kk,n:longint;
    a:array[0..101,0..101] of integer;
begin
  read(n);
  for i:=0 to 101 do 
    for j:=0 to 101 do 
      a[i,j]:=0;
      
  for k:=1 to ((n+1) div 2) do begin
    for i:=1 to n do begin
      for j:=1 to n do begin
        if k=1 then begin
          if (i=j)or(n-i+1=j)or(n-j+1=i) then a[i,j]:=1;
        end
        else begin
          if k>27 then kk:=k-26
                  else kk:=k;         
          if (a[i,j]=0)and((a[i-1,j]=kk-1)or(a[i+1,j]=kk-1)or(a[i,j-1]=kk-1)or(a[i,j+1]=kk-1)) then begin
            if kk=27 then
              a[i,j]:=kk-26
            else
              a[i,j]:=kk;
          end;
        end;
      end;
    end;
  end;
  for i:=1 to n do begin
    for j:=1 to n do begin
      write(chr(ord(a[i,j])+ord('a')-1));
    end;
    writeln;
  end;
end.  
        
