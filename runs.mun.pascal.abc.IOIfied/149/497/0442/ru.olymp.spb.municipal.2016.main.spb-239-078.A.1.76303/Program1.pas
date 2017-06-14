var
  k, i,l: longint;
  s:string;
  a: array of char;

begin
  k:=0;
  read(s);
  setlength(a,length(s)+1);
  for i:=1 to length(s) do a[i]:=s[i];
  for i:=length(s) downto 1 do  if a[i]<>'0' then begin l:=i; break; end;
  for i:=1 to l do if a[i]='0' then k:=k+1;
  write(k);
end.