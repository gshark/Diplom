Var a: longint;
    i,k: integer;
    s: string;
Begin
  readln(a);
  writeln(s);
  k:=0;
  Repeat
    if a mod 10 = 0 then a:= a div 10;
  Until a mod 10 > 0;
  Str(a,s);
  for i:=length(s) downto 1 do begin
    if s[i]='0' then k+=1;
  end;
  writeln(k);
 end.