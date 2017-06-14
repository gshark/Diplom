var k,m,n,p,q,x: integer;
begin
  readln(n,p,q);
  for m:=1 to (n-1) do
  begin
    for k:=n downto 2 do
    begin
      for x:=2 to (k-1) do
      begin
        if ((k mod x)=0) and ((m mod x)=0) then 
          else if (k*q<p*q*m) and (p*q*m<k*p) and (k<>10) then begin writeln(m,'/',k);  break; end;
      end;
    end;
  end;
end.
