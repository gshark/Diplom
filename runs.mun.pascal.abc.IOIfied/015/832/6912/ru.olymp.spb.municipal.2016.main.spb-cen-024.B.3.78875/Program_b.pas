program drobi;

var
  n, p, q, i, chn, znn, a, j, x: integer;
  ch: array [1..100] of integer;
  zn: array [1..100] of integer;

begin
  chn := 1;
  znn := 1;
  read(n, p, q);
  for j := 1 to n do
  begin
    a := 1;
    while (a / j) < (1 / q) do
    begin
      if (a / j) > (1 / p) 
        then 
      begin
        ch[chn] := a;
        zn[znn] := j;
        chn := chn + 1;
        znn := znn + 1;
      end;
      a := a + 1;
    end;
  end;
  
  for j:=1 to chn-1 do
   for a:=2 to chn-1 do
     if (ch[a]/zn[a])<(ch[a-1]/zn[a-1])
      then begin i:=ch[a]; ch[a]:=ch[a-1]; ch[a-1]:=i; x:=zn[a]; zn[a]:=zn[a-1]; zn[a-1]:=x; end;
 for a:=2 to chn-1 do
  if (ch[a]/zn[a])=(ch[a-1]/zn[a-1])
      then
      begin
      for i:=a to znn-1 do begin
      ch[i]:=ch[i+1]; zn[i]:=zn[i+1]; end;
      znn:=znn-1;
      end;
  for i := 1 to znn - 1 do
    writeln(ch[i], '/', zn[i]);
  

end.