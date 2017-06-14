var s:string;
    k,i:integer;
begin
  readln (s);
  k:=0;
  while (s[length(s)]='0') or (s[1]='0') do
  begin
    if s[length(s)]='0' then delete (s,length(s),1)
    else delete (s,1,1);
  end;
  for i:=1 to length (s) do if s[i]='0' then inc(k);
  writeln (k);

end.