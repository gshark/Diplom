var
s:string;
i,k,n,j,t:integer;
begin
  readln(s);
  n:=0;
  t:=0;
  k:=Length(s);
  if s[1]<>'0' then begin
  for j:=Length(s) downto 1 do
    begin
        t:=j;
       if s[j]<> '0' then break;
    end;
  for i:=1 to t do
    begin
       if s[i]= '0' then n:=n+1;

    end;
    end;
writeln(n);
end.