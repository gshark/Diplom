var k,f,n:integer;
    ka,kb:string;
    i:boolean;
begin
  readln(k);
  ka:=k.ToString;
  kb:='';
  i:=true;
  n:=0;
  for f:=0 to ka.Length-1 do
  begin
    if i then begin
      if not (ka[ka.Length-f] = '0') then begin i:=false;kb:=kb+ka[ka.Length-f] end;
    end
    else kb:=kb+ka[ka.Length-f];
  end;
  for f:=0 to kb.Length-1 do
  begin
    if kb[kb.Length-f] = '0' then n:=n+1;
  end;
  writeln(n);
end.