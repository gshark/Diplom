var r,k,q,f,a,b,c,d,e,g,h,i:integer;
begin
  readln(r,k,q);
  
  b:=0;
  for f:=1 to r-1 do b:=b+f;
  c:=(b+1) mod r;
  
  for f:=1 to q do
  begin
    read(a);
    if(a>b) and (a<r*k-b+1) then 
    begin
      d:=1-c+(a mod r);
      if d>r then d:=d mod r;
      if d<1 then d:=d+r;
      e:=r+((a-b-1) div r)-d+1;
      writeln(d,' ',e);
    end
    else
    begin
      if a<=b then
      begin
        d:=0;
        for i:=1 to 9999 do
        begin
          d:= d + i;
          if a <= d then break;
        end;
        writeln(i-d+a,' ',d-a+1)
      end;
      
      if a>=r*k-b+1 then
      begin
        d:=r*k;
        for i:=1 to 9999 do
        begin
          d:= d - i;
          if a >= d then break;
        end;
        writeln(r-a+d,' ',k-i+a-d)
      end;
    end;
  end;
end.